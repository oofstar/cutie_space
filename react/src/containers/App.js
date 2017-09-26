import React from 'react';
import { Route, IndexRoute, Router, browserHistory, Redirect } from 'react-router';
import UserShowContainer from './UserShowContainer';

const App = (props) => {
  debugger
  return (
    <Router history={browserHistory} >
      <Route path="users/:id" component={UserShowContainer} />
    </Router>
  );
}

export default App;
