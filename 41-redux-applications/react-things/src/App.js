import React from 'react';
import { Router, Route, Switch } from 'react-router-dom'
import EditView from './views/EditView';
import NewView from './views/NewView';
import IndexView from './views/IndexView';
import history from './history'

function App() {
  return (
    <div className="App">
      <Router history={history}>
        <Switch>
          <Route path="/things/:id/edit" component={EditView}/>
          <Route path="/things/new" component={NewView}/>
          <Route path="/things" component={IndexView}/>
        </Switch>
      </Router>
    </div>
  );
}

export default App;
