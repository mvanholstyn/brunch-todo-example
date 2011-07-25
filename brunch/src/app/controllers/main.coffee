class exports.Main extends Backbone.Controller
  routes :
    "all": "all",
    "done": "done"
    "undone": "undone"

  all: ->
    new app.views.home().render()
    app.collections.todos.fetch()
  
  done: ->
    new app.views.home().render()
    app.collections.todos.fetch()
  
  undone: ->
    new app.views.home().render()
    app.collections.todos.fetch()
