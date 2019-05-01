import React from 'react'
import Peace from "./Peace";
import War from "./War";
import socketIO from 'socket.io-client'

const io = socketIO('http://10.185.5.243:8080')

window.io = io

class Home extends React.Component {

    state = { 
      dragons: []
    }
  
    saveDragon(dragon){
      io.emit('dragons.update', dragon)
    }

    shiftDragon = (id) =>{
      this.setState({
        dragons: this.state.dragons.map( dragon =>{
          if(dragon.id === id){
            this.saveDragon({
              ...dragon, atWar: !dragon.atWar
            })
            return { ...dragon, atWar: !dragon.atWar }
          } else {
            return dragon
          }
        })
      })


    }
  
    componentDidMount(){
      io.emit('dragons.index', dragons => {
        this.setState({ dragons })
      })

      io.on('dragons.update', dragons => {
        this.setState({ dragons})
      })
    }
  
  
    render(){
      let dragonsAtHome = this.state.dragons.filter( dragon => !dragon.atWar )
      let dragonsAtWar = this.state.dragons.filter( dragon => dragon.atWar )
      return (
        <div>
          <Peace dragonsAtHome={dragonsAtHome} shiftDragon={this.shiftDragon}/>
          <War dragonsAtWar={dragonsAtWar} shiftDragon={this.shiftDragon}/>
        </div>
      );
    }
  
  }

  export default Home