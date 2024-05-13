let strelka = document.querySelector('.strelka')
let leftMenu = document.querySelector('.left-menu')


//console.log(leftMenu.getAttribute('class'))

function openMenu() {
   if (leftMenu.getAttribute('class') == 'left-menu open') {
        leftMenu.classList.remove('open')
        leftMenu.classList.add('close')
        console.log(leftMenu.getAttribute('class'))
        strelka.style.transform = 'rotate(0deg)'
   }
   else if (leftMenu.getAttribute('class') == 'left-menu close') {
        leftMenu.classList.remove('close')
        leftMenu.classList.add('open')
        console.log(leftMenu.getAttribute('class'))
        strelka.style.transform = 'rotate(180deg)'

        //transform: rotate(90deg); 
    }
    
    //console.log(leftMenu.getAttribute('class'))
}


strelka.addEventListener('click', openMenu)
