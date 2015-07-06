Hello = React.createClass
  render: ->
    <div>Hello {@props.name}</div>
 
 React.render(<Hello name="World" />, document.getElementById('app'));
