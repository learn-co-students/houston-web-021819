const Dragon = require('./models/Dragon')
const User = require('./models/User')


Dragon.sync()


const dragons = [
    {
        "name": "Toothless",
        "description": "A Night Fury",
        "image": "https://www.wikihow.com/images/b/b2/Draw-Toothless-Step-24.jpg",
        "atWar": false
    },
    {
        "name": "Smaug",
        "description": "He is Fire, He is Death",
        "image": "http://media.comicbook.com/uploads1/2015/08/cumbersmaug-147620.jpg",
        "atWar": false
    },
    {
        "name": "Bozar",
        "description": "An uninteresting dragon",
        "image": "https://static.boredpanda.com/blog/wp-content/uploads/2015/05/What-are-dragons-doing-nowadays-fb3.jpg",
        "atWar": false
    },
    {
        "name": "Tomar",
        "description": "An interesting dragon",
        "image": "https://media.giphy.com/media/bU660Y0VKPvCE/giphy.gif",
        "atWar": false
    }
]
;(async function(){
    await Dragon.destroy({ where: {  }})
    await User.destroy({ where: {  }})
    user = await User.create({ name: 'jing'})
    user.password= '1234'
    user.save()
    dragons.forEach( dragon => Dragon.create(dragon) )
})()
