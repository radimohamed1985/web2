<template>
    <div id="order-table" class="table-responsive" style="background: #1d2435; height: 100%; overflow-y: auto;">
        <table class="table table-small-font no-mb table-bordered table-striped">
            <thead>
            <tr>
                <th></th>
                <th>Asset</th>
                <th>Amount</th>
                <th>Qty</th>
                <th>Direction</th>
                <th>Leverage</th>
                <th>Current Price</th>
                <th>Opening Price</th>
                <th>PnL</th>
                <th>Opened at</th>
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
                <template v-if="index <= 2">
                    <td><img style="height : 25px" :src="i.currency.image"   /></td>
                    <td>{{ i.currency.name }}</td>
                    <td>${{ formatPrice(i.traded_amount) }} </td>
                    <td>{{ i.qty }} {{ i.currency.sym }}</td>
                    <td>
                        <span v-if="i.trade_type === 'buy'" class="badge badge-success p-2">Buy</span>
                        <span v-else class="badge badge-warning p-2">Sell</span>
                    </td>
                    <td>{{ i.leverage }}X</td>
                    <td>${{ formatPrice(i.closing_price) }}</td>
                    <td>${{ formatPrice(i.opening_price) }}</td>
                    <td>{{ formatPrice(i.profit) }}</td>



                    <td>{{ i.open_at }}</td>

                    <!-- <td>
                        <span v-if="i.status === 0" class="badge badge-warning p-2">Running</span>
                    </td> -->
                    <td>
                        <button v-if="i.by_admin" disabled class="btn btn-danger btn-sm">Close</button>
                        <button v-else @click="closeOrder(i, index)" class="btn btn-danger btn-sm">Close</button>
                    </td>
                </template>

            <tr v-if="p_trades.length > 3">
                <td class="text-center" colspan="100%"><a href="/dashboard/trades">View all open trades</a></td>
            </tr>


            </tbody>
        </table>
    </div>
</template>

<script>

export default {
name: "OrderBookAll",
    props : ['p_trades','close_trade_url'],
    data(){
    return {
        play:true,
    }
    },
    mounted() {
    // this.p_trades = this.open_trades;

    },
    methods : {
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
                    location.reload();
                    this.removeTrade(item, index)
                    this.play = true;

                    // swal("Success!", "Order closed successfully", "success", 3000);
                })
            }else{
                toastr.error('Slow down a little, still processing some request');
            }
        },
        formatPrice(value) {
            let val = (value/1).toFixed(2).replace('.', '.')
            return val.toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",")
        },
    },
}
</script>

<style scoped>

</style>
