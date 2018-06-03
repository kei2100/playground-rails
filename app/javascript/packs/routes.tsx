import * as React from 'react'
import {BrowserRouter, Route, Switch} from "react-router-dom";

const Routes: React.SFC = () => (
  <BrowserRouter>
    <Switch>
      <Route exact path='/' component={Top}/>
      <Route path='/test' component={About}/>
      <Route component={NotFound}/>
    </Switch>
  </BrowserRouter>
);

const Top = () => (
  <div>
    <h2>Top</h2>
  </div>
);
const About = () => (
  <div>
    <h2>Test</h2>
  </div>
);
const NotFound = () => (
  <div>
    <h2>NotFound</h2>
  </div>
);

export default Routes
