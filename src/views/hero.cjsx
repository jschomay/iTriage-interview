http = require "../services/http"

module.exports = React.createClass
  displayName: "Hero"

  getInitialState: ->
    status: undefined
    details: {}

  componentWillReceiveProps: (next) ->
    key = next.city.name
    @setState details: {}, ->
      @getDetails key

  getDetails: (key) ->
    http.get "http://private-anon-01f9694a7-codetestapi.apiary-mock.com/cities/#{key}", (details) =>
      temp = details.body.weather.current.temperature
      if @isMounted()
        @setState details: {temp: temp}, status: details.status

  render: ->
    if R.keys(@state.details).length
      details = <p>Temperature: {@state.details.temp} degrees</p>
    else
      details = null

    <div>
      <h1>{@props.city?.cityNameForDisplay}</h1>
      {details}
    </div>
