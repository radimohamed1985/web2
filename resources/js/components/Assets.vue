<template>
    <div class="modal-content">
        <div class="modal-header">
            <input class="form-control" v-model="text" :placeholder="'search '+i"/>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
            </button>
        </div>
        <div class="modal-body">
            <h5 v-if="assets.length > 0" class="modal-title" id="exampleModalLongTitle1">Select {{ i }} to trade</h5>
            <div class="row">


                <div class="col-6 col-md-6" v-for="item in assets">
                    <div class="card bg-accent-1">
                        <div class="card-body">
                            <a :href="tradestation+'?cur='+item.id" class="d-flex float-left">
                                <img style="max-height: 20px; max-width: 20px" :src="item.image" alt="account balance" />
                                <h6 class="card-title font-weight-light ml-3">{{ item.name }}</h6>
                            </a>
                        </div>
                        </div>
                    </div>
                </div>



                <div class="text-center mx-auto" v-if="assets.length < 1">
                    <p class="text-center">No {{ i  }} available for trading</p>
                </div>


            </div>

        <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            </div>

    </div>
</template>

<script>
export default {
    props : ['asset','i','tradestation'],
name: "Assets",
    data (){
        return {
            text : '',
        }
    },
    computed : {
        assets(){
            if(this.text.length < 2){
                return this.asset
            }else{
                return this.asset.filter(item => {
                    return item.name.toLowerCase().includes(this.text.toLowerCase())
                })
            }
        }
    }
}
</script>

<style scoped>

</style>
