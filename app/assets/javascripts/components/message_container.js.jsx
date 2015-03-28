var MessageContainer = React.createClass({
  scrollToBottom: function(){
    $('#all-messages').scrollTop($('#all-messages')[0].scrollHeight);
  },
  updateState: function(data){
    var state = this.state;
    console.log(state);
    console.log('a new message about '+JSON.stringify(data)+' arrived!');
    console.log(state["key"]);
    state["key"].push(<Message email={data.user.email} text={data.message.text}/>);
    console.log(state);
    this.setState(state);
    this.scrollToBottom();
  },
  getInitialState: function(){
    var dispatcher = new WebSocketRails(window.location.host+'/websocket');
    var channelName = this.props.channelName;
    console.log("Test");
    console.log(channelName);
    var channel = dispatcher.subscribe(channelName);
    var self = this;
    channel.bind('new', function(data){
      self.updateState(data);
    });
    this.scrollToBottom();
    return {key: []};
  },
  render: function() {
    console.log("FOO")
    return <div>{this.state}</div>;
  }
});
