
let mybtn =document.querySelector('.mybtn')
mybtn.addEventListener('click',function(e){
    e.preventDefault()
    
})

let email = document.getElementById('email')
let password = document.getElementById('password')
let form1 = document.getElementById('form1')
let form2 = document.getElementById('form2')

let firstname=document.getElementById('first_name')
if(firstname.innerHTML.includes('_demo')){
    form1.classList.add('hidden')
    form2.classList.add('show')
}