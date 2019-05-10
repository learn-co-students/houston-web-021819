import React from 'react';
import { connect } from 'react-redux'
import history from '../history'

// Add the prop values you want to pull from state below:
const mapStateToProps = (state) => ({
    thing: state.currentThing
})

// Add the prop methods you want to dispatch to state here:
const mapDispatchToProps = {
    
    selectThing: (id) => ({ type: 'SELECT_THING', id: id }),
    
    // Same thing but pointlessly verbose:
    changeName: (name) => dispatch => dispatch(({ type: 'CHANGE_NAME', name: name })),
    
    saveThing: thing => dispatch => {
        // Do this here, or in the reducer, but you'll need to use setTimeout to do it in the reducer
        history.replace('/things')
        fetch(`http://localhost:3000/things/${thing.id}`, {
            method: 'PATCH',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify(thing)
        })
            .then( res=> res.json())
            .then( thing => dispatch({ type: 'EDIT_THING', thing: thing }))
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(
    class EditView extends React.Component {

        componentDidMount(){
            this.props.selectThing(this.props.match.params.id)
        }

        handleChange = e => {
            this.props.changeName(e.target.value)
        }

        handleSubmit = e => {
            this.props.saveThing(this.props.thing)
        }

        render(){
            if(!this.props.thing) return <h1>Loading...</h1>
            return (
                <div>
                    <h1>Edit</h1>
                    <label>
                        Name
                    </label>
                    <input type="text" value={this.props.thing.name} onChange={this.handleChange} />
                    <input type="submit" onClick={this.handleSubmit} />
                </div>
            )
        }
    }
);