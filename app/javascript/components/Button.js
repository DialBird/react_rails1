import React from 'react';
import PropTypes from 'prop-types';
class Button extends React.Component {
  render () {
    return (
      <input type='submit' value={this.props.label} className={`ok ${this.props.class}`}/>
    );
  }
}

Button.propTypes = {
  label: PropTypes.string,
  class: PropTypes.string
};
export default Button;
