import React from 'react';
import { Link, browserHistory } from 'react-router';

const CutieTile = props => {
  let handleDelete = () => {
    props.deleteButton(props.id)
  }

  return (
    <li className="crew-box row">
      <span className="two columns">
        <img src={props.cutie.cutie_pic.url} className="crew-pic"/>
      </span>

      <span className="three columns">
        <a href={`/cuties/${props.cutie.id}`}><button>Visit {props.cutie.name}</button></a>
      </span>

      <span className="three columns">
        <a href={`/cuties/${props.cutie.id}/edit`}><button>Edit {props.cutie.name}</button></a>
      </span>

      <span className="three columns">
        <button onClick={handleDelete}>Delete {props.cutie.name}</button>
      </span>

    </li>
  )
}


export default CutieTile;
