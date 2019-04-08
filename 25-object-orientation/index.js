const ASSET_ROOT = './assets/'

let direction = null
let speed = 5

document.addEventListener('DOMContentLoaded', function(){
    
    const playerList = document.querySelector('.player-list')
    fetch('http://localhost:3000/players')
        .then(function(response){
            return response.json()
        })
        .then(function(players){
            for(let i = 0; i < players.length; i++ ){
                const player = players[i];
                let playerListItem = document.createElement('li')
                playerListItem.innerText = player.name
                playerList.append(
                    playerListItem
                )
                playerListItem.addEventListener('click', function(){
                    playerList.style.display = 'none'
                    selectPlayer(player)
                })
            }
        })
})

const selectPlayer = function(playerData){
    
    renderForm(playerData)
    
    let character = new Character(playerData, 'green')

    document.addEventListener('keydown', function(e){
        if(e.repeat) return
        if(e.key == 'ArrowRight'){
            character.walkRight()
        }
        if(e.key == 'ArrowLeft'){
            character.walkLeft()
        }
        if(e.key == 'ArrowUp'){
            character.walkUp()
        }
        if(e.key == 'ArrowDown'){
            character.walkDown()
        }
    })


    document.addEventListener('keyup', function(){
        character.stop()
        const left = parseInt(character.element.style.left)
        const bottom = parseInt(character.element.style.bottom)
    
        fetch(`http://localhost:3000/players/${playerData.id}`, {
            method: 'PATCH',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                x: left,
                y: bottom,
            })
        })
    })
}
