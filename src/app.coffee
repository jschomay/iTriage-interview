document.addEventListener "DOMContentLoaded", ->

  require "./views/hello"

  superagent.get("http://private-anon-01f9694a7-codetestapi.apiary-mock.com/cities")
    .end (err, res) ->
      throw err if err
      console.log res
