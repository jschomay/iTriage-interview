capitalizeFirstLetter = (s) ->
  firstLetter = s.slice(0,1)
  firstLetter.toUpperCase() + s.slice(1, s.length)

capitalizeEachWord = (s) ->
  names = s.split(" ")
  capitalized = R.map(capitalizeFirstLetter, names)
  capitalized.join(" ")

module.exports = React.createClass
  displayName: "Cities"
  getInitialState: ->
    cities:
      chicago: {}
      denver: {}
      "new york": {}

  render: ->
    cityToLi = (cityName) ->
      cityNameForDisplay = capitalizeEachWord cityName
      <li>{cityNameForDisplay}</li>

    cities = R.map cityToLi, R.keys(@state.cities)
    <ul>{cities}</ul>
 
