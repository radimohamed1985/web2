<?php

namespace App\Console\Commands;

use App\Http\Controllers\Controller;
use App\Http\Controllers\TradesController;
use App\Models\Trade;
use App\Models\User;
use Illuminate\Console\Command;

class MarginCall extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'margin_call:cron';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'Command description';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        $msg = setting('margin_mail','The margin ratio of your Trading account has reached 80%. To avoid being liquidated, please transfer Funds into your trading account or reduce your positions. please contact your account manager right away for directives on how to resolve the situation');

        $sub = setting('mail_subject','Margin Call');

        \Log::info("Margin Cron is working fine!");

        $tradeCon = new TradesController();
//        $con = new Controller();
        $all_active_trades = Trade::whereStatus(0)->get();
        foreach ($all_active_trades as $trade){
            $tradeCon->updateTradeProfit($trade->id);
        }
        $user_ids = Trade::whereStatus(0)->groupBy('user_id')->pluck('user_id');
        $activeUsers = User::whereIn('id',$user_ids)->get();

        foreach ($activeUsers as $user){
            $pnl = Trade::whereStatus(0)->whereUserId($user->id)->sum('profit');
            $total_trade = Trade::whereStatus(0)->whereUserId($user->id)->sum('traded_amount');
            $bal = $user->balance;
            $freeMargin = ($bal - $total_trade) + $pnl;
            $margin_percent = (int) setting('margin_percent', 10);
            $balPercentage = ($bal * setting('margin_percent', 10)) / 100;
            if($freeMargin < $balPercentage){
                $tradeCon->message($user,$msg, $sub);
            }
        }

        return count($activeUsers);
    }
}
