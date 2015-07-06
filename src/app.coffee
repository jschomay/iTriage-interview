# app script
hello = document.createElement("p")
hello.textContent = "Hello iTriage"
document.addEventListener "DOMContentLoaded", ->
  document.getElementById("app").appendChild(hello)
  console.log "Hello iTriage"
