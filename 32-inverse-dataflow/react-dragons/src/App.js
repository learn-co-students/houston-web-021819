import React, { Component } from 'react';

class App extends Component {
  render() {
    return (
      <div>
        <Header />
        <DragonList />
      </div>
    );
  }
}


class Header extends Component {

  render(){
    return (
      <h1>All Dragons</h1>
    )
  }

}

class DragonList extends Component {

  state = {
    dragons: dragons
  }


  toggleDragon = (selectedId) => {
    this.setState({ 
      dragons: this.state.dragons.map( dragon => {
        return dragon.id === selectedId ? { 
            ...dragon, 
            atWar: !dragon.atWar
          } : dragon
      }) 
    })
  }

  render(){

    return (
      <div style={{ textAlign: 'center'}}>
        <div style={{float:'left',width:'40%', padding:'5%', backgroundColor:'#00ffd8'}} >
          {/* At Home */}
          {this.state.dragons.filter(dragon => !dragon.atWar).map( d => <DragonCard {...d} toggleDragon={this.toggleDragon} /> )}
        </div>
        <div style={{float:'left', width:'40%', padding:'5%', backgroundColor:'#f98181'}}>
          {/* At War */}
          {this.state.dragons.filter(dragon => !dragon.atWar).map( d => <DragonCard {...d} toggleDragon={this.toggleDragon} /> )}
        </div>
        
      </div>
    )
  }

}

class DragonCard extends Component  {


  state = {
    settings: {
      atWar: false,
      visible: true
    }
  }

  render(){
    console.log('The Dragon Card Rendered!')
    //this.setState({ message: 'Hello World' })
    //this.state // => usually it will be an object
    return (
      <div style={{  
          borderColor: 'red', 
          borderStyle: this.props.atWar ? 'solid' : 'none ',
          display: this.state.settings.visible   ? 'block'    : 'none'
        }}>
        <h3>{this.props.name}</h3>
        <p>{this.props.description}</p>
        <img style={{ width: '100px' }} src={this.props.image}></img>
        <br />
        <button 
          onClick={() => this.props.toggleDragon(this.props.id)} 
        >Send Dragon to War</button>
      </div>
    )
  }


}

const dragons = [
  {
      "id": 1,
      "name": "Toothless",
      "description": "A Night Fury",
      "image":"https://www.wikihow.com/images/b/b2/Draw-Toothless-Step-24.jpg",
      "atWar": false
  },
  {
      "id": 2,
      "name": "Smaug",
      "description": "He is Fire, He is Death",
      "image":"http://media.comicbook.com/uploads1/2015/08/cumbersmaug-147620.jpg",
      "atWar": false
  },
  {
      "id": 3,
      "name": "Bozar",
      "description": "An uninteresting dragon",
      "image":"https://static.boredpanda.com/blog/wp-content/uploads/2015/05/What-are-dragons-doing-nowadays-fb3.jpg",
      "atWar": false
  },
  {
      "id": 4,
      "name": "Tomar",
      "description": "An interesting dragon",
      "image":"https://media.giphy.com/media/bU660Y0VKPvCE/giphy.gif",
      "atWar": false
  }
]

export default App;
