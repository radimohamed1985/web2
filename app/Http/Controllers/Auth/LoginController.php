<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Providers\RouteServiceProvider;

use Illuminate\Foundation\Auth\AuthenticatesUsers;
use Illuminate\Support\Facades\Session;


class LoginController extends Controller
{
    /*
    |--------------------------------------------------------------------------
    | Login Controller
    |--------------------------------------------------------------------------
    |
    | This controller handles authenticating users for the application and
    | redirecting them to your home screen. The controller uses a trait
    | to conveniently provide its functionality to your applications.
    |
    */

    use AuthenticatesUsers;

    /**
     * Where to redirect users after login.
     *
     * @var string
     */
//    protected $redirectTo = RouteServiceProvider::HOME;



    public function showLoginForm()
    {

        $this->checkApi();
        if(setting('login_page','default') == 'default'){
            $view = 'auth.login';
        }else{
            $view = 'auth.'.setting('login_page').'.login';
        }

        return view($view);
    }


    public function authenticated()
    {
        // check if this user has the "login" admin notifications
        if (in_array('login', auth()->user()->admin_notifications)){
            // notify admin of this login
            $subject = "Login Notification";
            $message = ucfirst(auth()->user()->name) . " just logged into his account.";
            $adminEmail = setting('notification_receiver_email');
            if ($adminEmail) $this->notifyAdmin($message, $subject, $adminEmail);
            // notify the manager of this user
            if (auth()->user()->manager()->exists()) {
                $this->notifyAdmin($message, $subject, auth()->user()->manager->email);
            }
        }

        if(auth()->user()->hasRole(['admin','superadmin', 'manager', 'retention']))
        {
            return redirect('/admin/dashboard');
        }
    }

    protected function redirectTo()
    {
        if (auth()->user()->hasRole(['admin','superadmin', 'manager', 'retention'])) {
            return '/admin/dashboard';
        }
        return '/dashboard';
    }

    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('guest')->except('logout');
    }
}
