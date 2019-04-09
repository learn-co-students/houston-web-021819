class NonPlayableCharacter extends Character {

    walk(){
        this.walkRight()
        setInterval(() => {
            this.turn()
        }, 500)
    }

    turn(){
        if(this.direction == 'left'){
            this.walkDown()
        } else if(this.direction == 'down'){
            this.walkRight()
        } else if(this.direction == 'right'){
            this.walkUp()
        } else if(this.direction == 'up'){
            this.walkLeft()
        }
    }

}