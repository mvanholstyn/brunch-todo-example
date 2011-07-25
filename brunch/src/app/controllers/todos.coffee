class exports.Todos extends Backbone.Controller
  routes :
    "todos/all": "all",
    "todos/done": "done"
    "todos/undone": "undone"

  all: ->
    layout = new app.views.layout().render()
    $(layout.el).find('#todo-app').append new app.views.todos.all().render().el
    app.collections.todos.fetch()
  
  done: ->
    layout = new app.views.layout().render()
    $(layout.el).find('#todo-app').append new app.views.todos.done().render().el
    app.collections.todos.fetch()
  
  undone: ->
    layout = new app.views.layout().render()
    $(layout.el).find('#todo-app').append new app.views.todos.undone().render().el
    app.collections.todos.fetch()
