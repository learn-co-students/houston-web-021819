const { STRING, BOOLEAN, Model } = require('sequelize');
const sequelize = require('./sequelize')
const bcrypt = require('bcrypt')
const jwt = require('jsonwebtoken')

class User extends Model {

    authenticate(rawPassword){
        return bcrypt.compareSync(rawPassword, this.password_digest)
    }
   
    // has_secure_password equivalent from rails:
    // Triggers with: user.password = '1234'
    // Saves password_digest
    set password(value){
        let salt = bcrypt.genSaltSync(10)
        let hash =  bcrypt.hashSync(value, salt);
        this.password_digest = hash
    }

    get token(){
        return jwt.sign({ id: this.id }, 'sdfaliwe334')
    }

    toJSON(){
        let jsonObject= { ...this.dataValues, token: this.token }
        delete jsonObject.password_digest
        return jsonObject
    }

}

User.init({
    name: {
        type: STRING,
    },
    password_digest: {
        type: STRING
    }
}, { sequelize, modelName: 'user' } )

// const User = sequelize.define('user', {
//     name: {
//         type: STRING,
//     },
//     password_digest: {
//         type: STRING
//     }
// });

module.exports = User

sequelize.sync()
