module.exports =
  get: (url, cb) ->
    superagent.get(url)
      .end (err, res) ->
        throw err if err
        cb res
