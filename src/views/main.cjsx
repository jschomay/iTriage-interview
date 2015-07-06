Cities = require "./cities"

Main = React.createClass
  displayName: "Main"
  render: ->
    <Cities />
 
 React.render(<Main />, document.getElementById('app'));
