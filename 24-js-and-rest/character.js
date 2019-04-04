const character = document.createElement('img')

function spawnCharacter(playerData){
    character.style.width = '75px'
    character.style.position = 'absolute'
    character.src = `${ASSET_ROOT}/static.gif`
    character.style.left = `${playerData.x}px`
    character.style.bottom = `${playerData.y}px`
    document.body.append(character)
    
    setInterval(function(){
        moveCharacter(character)
    }, 20)

}


function moveCharacter(character){
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

}


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