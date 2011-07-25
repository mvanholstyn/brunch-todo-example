window.app = {}

$(document).ready ->
  app.templates =
    home: require('templates/home')
    todos:
      _new:  require('templates/todos/new')
      stats: require('templates/todos/stats')
      todo:  require('templates/todos/todo')
      todos: require('templates/todos/todos')
  
  app.models =
    todo: require('models/todo').Todo
      
  app.collections =
    todos: new (require('collections/todos').Todos)()

  app.controllers =
    main: new (require('controllers/main').MainController)()

  app.views =
    home: require('views/home').HomeView
    todos: 
      _new: require('views/todos/new').NewTodoView
      all: require('views/todos/all').TodosAllView
      # undone: require('views/todos/undone').TodosUndoneView
      # done: require('views/todos/done').TodosDoneView
      todo: require('views/todos/todo').TodoView
      stats: require('views/todos/stats').StatsView
      

  Backbone.history.saveLocation("all") if Backbone.history.getFragment() is ''
  Backbone.history.start()
