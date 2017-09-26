import React, { Component } from 'react';

class UserShowContainer extends Component {
  constructor(props) {
    super(props);
    this.state = {
      user: {}
    }
  }

  componentDidMount() {
    let userId = this.props.params.id;
    fetch(`/api/v1/users/${userId}`)
    .then(response => response.json())
    .then(responseData => {
      this.setState({
        user: responseData.user
      })
    })
  }

  render() {
    debugger

    return(
      <div>Sup now?</div>
    )
  }








}

export default UserShowContainer;
