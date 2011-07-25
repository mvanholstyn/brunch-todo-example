class exports.Todos extends Backbone.Controller
  routes :
    "todos/all": "all",
    "todos/done": "done"
    "todos/undone": "undone"

  all: ->
    new app.views.layout().render()
    app.collections.todos.fetch()
  
  done: ->
    new app.views.layout().render()
    app.collections.todos.fetch()
  
  undone: ->
    new app.views.layout().render()
    app.collections.todos.fetch()
