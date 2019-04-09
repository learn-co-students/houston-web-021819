class Animal {

    constructor(name){
        this.name = name
    }

    eat(){
        return "Munch munch munch"
    }

    sleep(){
        return "Zzzzzzzzzz"
    }

}

class Owl extends Animal {

    hoot(){
        return 'Hoo hoo!'
    }

}

const owl = new Owl
const cat = new Animal