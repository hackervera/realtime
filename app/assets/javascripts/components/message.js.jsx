var Message = React.createClass({
  propTypes: {
    email: React.PropTypes.node,
    text: React.PropTypes.node
  },

  render: function() {
    return (
      <div>
        &lt;{this.props.email}&gt; {this.props.text}
      </div>
    );
  }
});
