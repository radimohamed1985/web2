<label class="mb-0 font-weight-bold" style="">1 :
    {{-- {{ $currency->leverage }} --}}
<span id="lev"></span>
<input type="range" name="" step="25" min="0" max="100" value="50"  id="ran"></label>


<script>
    let lev = document.getElementById('lev')
let ran = document.getElementById('ran')

ran.addEventListener('change',function(){
    lev.innerHTML = this.value
    console.log(this.value)
})
</script>