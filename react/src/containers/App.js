import React from 'react';
import { Route, IndexRoute, Router, browserHistory, Redirect } from 'react-router';
import UserShowContainer from './UserShowContainer';

const App = (props) => {

  return (
    <Router history={browserHistory} >
      <Route exact path="users/:id" component={UserShowContainer} />
    </Router>
  );
}

export default App;
