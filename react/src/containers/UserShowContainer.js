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
    this.handleDelete = this.handleDelete.bind(this)
  }

  handleDelete(cutieId) {
    fetch(`/api/v1/cuties/${cutieId}`, {
      method: 'DELETE',
      credentials: 'same-origin'
    }).then(response => response.json())
    .catch((thing) => console.log("so sad"))
    this.setState({cuties: this.state.cuties.filter(cutie => cutie.id !== cutieId)})
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
          deleteButton={this.handleDelete}
        />
      )
    })

    return(
      <div className="container">
        <div className="row team-header">

            Hi, <a href="/users/edit">{this.state.user.username}</a>

        </div>

        <ul>
          {teamName}
          {cuties}
          <li className="crew-box row">
            <span className="two columns">
              <img src="/images/placeholder.jpg" className= "crew-pic" /><br/>
            </span>

            <span className="three columns">

            </span>

            <span className="three columns">

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
