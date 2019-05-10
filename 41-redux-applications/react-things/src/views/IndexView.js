import React from 'react';
import { connect } from 'react-redux'
import { Link } from 'react-router-dom'

// Add the prop values you want to pull from state below:
const mapStateToProps = (state) => ({
    things: state.things
})

// Add the prop methods you want to dispatch to state here:
const mapDispatchToProps = {
    fetchThings: () => {
        return dispatch => {
            fetch('http://localhost:3000/things')
                .then( res => res.json())
                .then( things => {
                    dispatch({ type: 'STORE_THINGS', things: things })
                })
        }
    }
}

export default connect(mapStateToProps, mapDispatchToProps)(
    class IndexView extends React.Component {

        componentDidMount(){
            this.props.fetchThings()
        }

        render(){
            return (
                <div>
                    <ul>
                        {this.props.things.map( thing => (
                            <li>
                                <h3>{thing.name}</h3>
                                <p>{thing.description}</p>
                                <Link to={`/things/${thing.id}/edit`}>Edit</Link>
                            </li>
                        ))}
                    </ul>
                    <Link to="/things/new">Create New Thing</Link>
                </div>
            )
        }
    }
);