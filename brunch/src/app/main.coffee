window.app = {}

$(document).ready ->
  app.templates =
    layout: require('templates/layout')
    todos:
      new:  require('templates/todos/new')
      stats: require('templates/todos/stats')
      todo:  require('templates/todos/todo')
      todos: require('templates/todos/todos')
  
  app.models =
    todo: require('models/todo').Todo
      
  app.collections =
    todos: new (require('collections/todos').Todos)()

  app.controllers =
    todos: new (require('controllers/todos').Todos)()

  app.views =
    layout: require('views/layout').Layout
    todos: 
      new: require('views/todos/new').New
      all: require('views/todos/all').All
      undone: require('views/todos/undone').Undone
      done: require('views/todos/done').Done
      todo: require('views/todos/todo').Todo
      stats: require('views/todos/stats').Stats
      

  Backbone.history.saveLocation("todos/all") if Backbone.history.getFragment() is ''
  Backbone.history.start()
