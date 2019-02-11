import React, { Component } from 'react';
import V1 from './V1';
import './App.css';

export default class App extends Component {
  constructor(props) {
    super(props);
    this.state = {
      person: 'hide'
    };
  }

  renderButtons = () => {
    return (
        <div style={ { display: 'flex', justifyContent: 'space-around', flexWrap: 'wrap', padding: 20 } }>
            <div onClick={ () => this.setState({ person: 'hide' }) } style={ { paddingBottom: 10 } }>
                <button className="pure-button pure-button-primary">Hide</button>
            </div>
            <div onClick={ () => this.setState({ person: 'v1' }) } style={ { paddingBottom: 10 } }>
                <button className="pure-button pure-button-primary">V1</button>
            </div>
        </div>
      );
  }

  render() {
    if (this.state.person === 'hide') {
      return (
          <div>
              {this.renderButtons()}
          </div>
      )
    } else if (this.state.person === 'v1') {
      return (
          <div>
              {this.renderButtons()}
              <V1 />
          </div>
        );
    } else {
      return (
          <div>Error</div>
      )
    }
  }
}
