Cities = require "./cities"
Hero = require "./hero"

Main = React.createClass
  displayName: "Main"

  getInitialState: ->
    activeCity: {}

  setActiveCity: (cityName, cityNameForDisplay) ->
    @setState activeCity: {name: cityName, cityNameForDisplay: cityNameForDisplay}

  render: ->
    <div>
      <Hero city=@state.activeCity />
      <Cities clickHandler=@setActiveCity />
    </div>
 
 React.render(<Main />, document.getElementById('app'));
