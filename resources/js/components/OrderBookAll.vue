<template>
    <div>
    <div class="row">
        <div class="col-xl-12 col-lg-12 col-sm-12">
            <div style="margin-top: 10px" class="card">

        <div class="card-body">
            <ul class="nav nav-tabs">
                <li class="active">
                    <a href="#" @click="setTrade(0)" class="btn btn-outline-primary" data-toggle="tab">
                        Open Orders ({{ p_trades.length }})
                    </a>
                </li>
                <li>
                    <a href="#" @click="setTrade(1)" class="btn btn-outline-primary" data-toggle="tab">
                        Closed Trades({{ closed_trades.length }})
                    </a>
                </li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade in active" id="open">
                    <div class="table-responsive" data-pattern="priority-columns">
                        <table v-if="is_type === 0" class="table table-small-font no-mb table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>Opened at</th>
                                <th>Currency / Asset</th>
                                <th>Amount</th>
                                <th>Qty</th>
                                <th>Leverage</th>
                                <th>Current Price</th>
                                <th>Opening Price</th>
                                <th>PnL</th>
                                <th>Direction</th>
                                <th>Status</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody v-if="p_trades.length < 1">
                            <tr>
                                <td class="text-center" colspan="100%">No open trades</td>
                            </tr>
                            </tbody>
                            <tbody v-else>
                            <tr v-for="(i, index) in p_trades">
                                <td>{{ i.open_at }}</td>
                                <td>{{ i.currency ? i.currency.name : '' }}</td>
                                <td>${{ formatPrice(i.traded_amount) }} </td>
                                <td>{{ i.qty }} {{ i.currency ? i.currency.sym : '' }}</td>
                                <td>{{ i.leverage }}X</td>
                                <td>${{ formatPrice(i.closing_price) }}</td>
                                <td>${{ formatPrice(i.opening_price) }}</td>
                                <td :class="i.profit < 1 ? 'text-danger' : 'text-success'">{{ formatPrice(i.profit) }}</td>

                                <td>
                                    <span v-if="i.trade_type === 'buy'" class="badge badge-success p-2">Buy</span>
                                    <span v-else class="badge badge-warning p-2">Sell</span>
                                </td>
                                <td>
                                    <span v-if="i.status === 0" class="badge badge-warning p-2">Running</span>
                                </td>
                                <td>
                                    <button v-if="i.by_admin"  disabled class="btn btn-danger">Close</button>
                                    <button v-else  @click="closeOrder(i, index)" class="btn btn-danger">Close</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                        <table v-else class="table table-small-font no-mb table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>Opened at </th>
                                <th>Closed at </th>
                                <th>Currency / Asset</th>
                                <th>Amount</th>
                                <th>Qty</th>
                                <th>PnL</th>
                                <th>Opening Price</th>
                                <th v-if="is_type !== 0">Closing Price</th>
                                <th>Direction</th>
                                <th v-if="is_type === 0">Status</th>
                                <th v-if="is_type === 1">Result</th>
                                <th v-if="is_type === 0"></th>
                            </tr>
                            </thead>
                            <tbody v-if="closed_trades < 1">
                            <tr>
                                <td class="text-center" colspan="100%">No closed trades</td>
                            </tr>
                            </tbody>
                            <tbody v-else>
                            <tr v-for="i in closed_trades">
                                <td>{{ i.open_at }}</td>
                                <td> {{ i.close_at }}</td>
                                <td>{{ i.currency ? i.currency.name : '' }}</td>
                                <td>{{ i.traded_amount }} USD</td>
                                <td>{{ i.qty }} {{ i.currency ? i.currency.sym : '' }}</td>
                                <td :class="i.profit < 1 ? 'text-danger' : 'text-success'">{{ i.profit }}</td>
                                <td>${{ formatPrice(i.opening_price) }}</td>
                                <td>${{ formatPrice(i.closing_price) }}</td>
                                <td>
                                    <span v-if="i.trade_type === 'buy'" class="badge badge-success p-2">Buy</span>
                                    <span v-else class="badge badge-warning p-2">Sell</span>
                                </td>
                                <td v-if="i.status === 0">
                                    <span v-if="i.status === 0" class="badge badge-warning p-2">Running</span>
                                </td>
                                <td v-if="i.status === 1">
                                    <span v-if="i.result === 2" class="badge badge-danger p-2">loss</span>
                                    <span v-if="i.result === 1" class="badge badge-success p-2">Won</span>
                                    <span v-if="i.result === 3" class="badge badge-warning p-2">Draw</span>
                                </td>
                                <td v-if="is_type === 0">
                                    <button v-if="i.by_admin"  disabled class="btn btn-danger">Close</button>
                                    <button v-else  click="closeOrder(i.id)" class="btn btn-danger">Close</button>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

                </div>

            </div>
            <div class="clock w-100"></div>
        </div>

    </div>
        </div>
    </div>
        <trade_footer :plan="plan" :bonus="bonus" :bal="bal" :margin="margin" :free_margin="freeMargin" :equity="equity" :pnl="pnl"></trade_footer>
    </div>
</template>

<script>

export default {
name: "OrderBookAll",
    props : ['open_trades','interv','trades','balance','trade_url','all_trade_url','close_trade_url','plan','bonus'],
    data(){
    return {
        p_trades : [],
        play:true,
        bal : 0,
        is_type:0,
        all_trades:[],
    }
    },
    mounted() {
    this.p_trades = this.open_trades;

    this.all_trades = this.trades;

    this.getBal();

        this.startUpdate();
    // this.getTrades();

    },
    methods : {
        setTrade(i){
            this.is_type = i;
        },
        removeTrade(item, index){
            if(this.p_trades[index] === item) {
                this.p_trades.splice(index, 1)
                toastr.success('Trade successfully closed');
            } else {
                let found = this.items.indexOf(item)
                this.p_trades.splice(found, 1)
                toastr.success('Trade successfully closed');

            }
        },
        closeOrder(item, index){
            let id = item.id
            if(this.play){
                this.play = false
                toastr.success('Processing your trade .... hold on');
                axios.post(this.close_trade_url, { id : id}).then((res) => {
                    this.removeTrade(item, index)
                    this.play = true;
                    this.getAllTrades();
                    this.updateProfits();

                    // swal("Success!", "Order closed successfully", "success", 3000);
                })
            }else{
                toastr.error('Slow down a little, still processing some request');
            }
        },

        // checkTrade(){
        //     axios.get(this.check_trade_url).then((response) => {
        //         if(response.data.status > 0){
        //             toastr.success("trade successfully closed")
        //             this.getTrades();
        //         }
        //     })
        // },

        getBal(){
            axios.get('/api/user/balance').then((res) => {
                this.bal = res.data;
            })

        },

        formatPrice(value) {
            let val = (value/1).toFixed(2).replace('.', '.')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        },

        updateProfits(){
            console.log('updating profit');
            axios.get('/dashboard/api/update/profit').then((res) => {
                this.p_trades = res.data;
            })
            // console.log(this.updateTrades);
        },

        getAllTrades(){
                axios.get(this.all_trade_url).then((res) => {
                    this.all_trades = res.data;
                })
        },

        startUpdate(){
            console.log('updating at....' + this.interval)
            this.updateProfits();
            this.timer = setInterval(() => {
                this.updateProfits();
            }, this.interval)
        }
    },

    watch: {
    open_trades(){
        // if(this.open_trades.length > 0){
        //     this.timer = setInterval(() => {
        //         this.checkTrade()
        //     }, 10000)
        // }

        // else {
        //     clearInterval(this.timer)
        // }
    },
    },

    computed : {
        interval(){
            if(this.interv){
                return parseInt(this.interv)
            }else {
                return 2000;
            }
        },

        closed_trades(){
        return this.all_trades.filter(item => {
            return item.status === 1
        });
    },
        // pnl(){
        //     // return  this.p_trades.reduce((trade, item) => parseInt(trade + item.profit), 0);
        //     return  this.p_trades.reduce((trade, item) => parseFloat(trade + item.profit), 0);
        // },

        pnl: function(){
            let sum = 0;
            for(let i = 0; i < this.p_trades.length; i++){
                sum += (parseFloat(this.p_trades[i].profit));
            }
            return sum;
        },

        margin(){
            return  this.p_trades.reduce((trade, item) => parseInt(trade + item.traded_amount), 0);
        },

        equity(){
            return parseInt(this.bal) +  (parseInt(this.pnl))
        },
        freeMargin(){
            return parseInt(this.bal)  - (parseFloat(this.margin)) + (parseInt(this.pnl))
        },
    }
}
</script>

<style scoped>

</style>
