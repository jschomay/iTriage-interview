http = require "../services/http"

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
    cities: {}
    status: ""

  componentDidMount: ->
    http.get "http://private-anon-01f9694a7-codetestapi.apiary-mock.com/cities", (cities) =>
      @isMounted()
      @setState cities: cities.body, status: cities.status

  render: ->
    console.log @state.status
    cityToLi = (cityName) ->
      cityNameForDisplay = capitalizeEachWord cityName
      <li key=cityName>{cityNameForDisplay}</li>

    if R.keys(@state.cities).length
      content = R.map cityToLi, R.keys(@state.cities)
    else
      content = "Loading cities..."

    <ul>{content}</ul>
 
