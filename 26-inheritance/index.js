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
    
    new PlayableCharacter(playerData, 'green')

}
