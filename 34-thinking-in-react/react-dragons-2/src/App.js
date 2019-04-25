import React from 'react';
import Home from "./components/Home";
import War from "./components/War";


class App extends React.Component {

  state = { 
    dragons: []
  }

  shiftDragon = (id) =>{
    this.setState({
      dragons: this.state.dragons.map( dragon =>{
        if(dragon.id === id){
          return { ...dragon, atWar: !dragon.atWar }
        } else {
          return dragon
        }
      })
    })
  }

  componentDidMount(){
    fetch('http://localhost:3000/dragons')
      .then( res => res.json() )
      .then( dragons => this.setState({ 
        dragons: dragons
      }))
  }


  render(){
    let dragonsAtHome = this.state.dragons.filter( dragon => !dragon.atWar )
    let dragonsAtWar = this.state.dragons.filter( dragon => dragon.atWar )
    return (
      <div>
        <Home dragonsAtHome={dragonsAtHome} shiftDragon={this.shiftDragon}/>
        <War dragonsAtWar={dragonsAtWar} shiftDragon={this.shiftDragon}/>
      </div>
    );
  }

}

export default App;
