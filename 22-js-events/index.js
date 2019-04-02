const ASSET_ROOT = './assets/green-character'

const character = document.createElement('img')
character.style.width = '75px'
character.style.position = 'absolute'
character.style.left = '0px'
character.style.bottom = '0px'
character.src = `${ASSET_ROOT}/static.gif`

let direction = null
let speed = 5

setInterval(function(){

    const left = parseInt(character.style.left)
    const bottom = parseInt(character.style.bottom)

    if(direction == 'right'){
        character.style.left = `${left+speed}px`
    }

    if(direction == 'left'){
        character.style.left = `${left-speed}px`
    }

    if(direction == 'up'){
        character.style.bottom = `${bottom+speed}px`
    }

    if(direction == 'down'){
        character.style.bottom = `${bottom-speed}px`
    }

}, 20)


function walkRight(){
    character.src = `${ASSET_ROOT}/walkright.gif`
    direction = 'right'
}

function walkLeft(){
    character.src = `${ASSET_ROOT}/walkleft.gif`
    direction = 'left'
}

function walkUp(){
    character.src = `${ASSET_ROOT}/walkup.gif`
    direction = 'up'
}

function walkDown(){
    character.src = `${ASSET_ROOT}/walkdown.gif`
    direction = 'down'
}

function stop(){
    character.src = `${ASSET_ROOT}/static.gif`
    direction = null
}

document.addEventListener('keydown', function(e){
    if(e.repeat) return
	if(e.key == 'ArrowRight'){
		walkRight()
    }
    if(e.key == 'ArrowLeft'){
		walkLeft()
    }
    if(e.key == 'ArrowUp'){
		walkUp()
    }
    if(e.key == 'ArrowDown'){
		walkDown()
    }
})


document.addEventListener('keyup', function(){
    stop()
})

// Also works:
// document.addEventListener('keyup', stop)

document.addEventListener('DOMContentLoaded', function(){
    document.body.append(character)
    const form = document.querySelector('.preference-form')
    const speedCheckbox = document.querySelector('.speed-checkbox')

    form.addEventListener('submit', function(e){
        e.preventDefault()
        if(speedCheckbox.checked){
            speed = 10
        } else {
            speed = 5
        }
    })
})