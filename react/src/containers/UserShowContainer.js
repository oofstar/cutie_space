import React, { Component } from 'react';
import { browserHistory, Link } from 'react-router';
import CutieTile from '../components/CutieTile'

class UserShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      user: {},
      cuties: []
    }
  }

  componentDidMount() {
    let userId = this.props.params.id;
    fetch(`/api/v1/users/${userId}`)
    .then(response => response.json())
    .then(responseData => {
      this.setState({
        user: responseData.user,
        cuties: responseData.user.cuties
      })
    })
  }

  render() {
    let teamName
    if (!this.state.user.team_name) {
      teamName = `${this.state.user.username}'s Crew`
    } else {
      teamName = this.state.user.team_name
    }


    let cuties = this.state.cuties.map(cutie => {

      return(
        <CutieTile
          key={cutie.id}
          id={cutie.id}
          cutie={cutie}
        />
      )
    })

    return(
      <div className="container">
        <div className="row team-header">
          <div className="two columns">
            Hi, {this.state.user.username}<br />
            <a href="/users/edit">Edit Your Profile</a>
          </div>
        </div>

        <ul>
          {teamName}
          {cuties}
          <li className="crew-box row">
            <span className="two columns">
              <img src="/images/placeholder.jpg" className= "crew-pic" /><br/>
            </span>

            <span className="three columns">
              Add A Cutie<br/>
              Add A Cutie
            </span>

            <span className="three columns">
              Add A Cutie
            </span>
            <span className="three columns">
              <a href={`/cuties/new`}><button>Add A Cutie To Your Crew</button></a>
            </span>
          </li>
        </ul>
      </div>
    )
  }








}

export default UserShowContainer;
