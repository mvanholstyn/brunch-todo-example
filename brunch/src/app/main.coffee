window.app = {}
app.templates = {}
app.models = {}
app.collections = {}
app.controllers = {}
app.views = 
  todos = {}

Todos = require('collections/todos').Todos

MainController = require('controllers/main').MainController

HomeView = require('views/home').HomeView
NewTodoView = require('views/todos/new').NewTodoView
TodosAllView = require('views/todos/all').TodosAllView
TodosUndoneView = require('views/todos/undone').TodosUndoneView
TodosDoneView = require('views/todos/done').TodosDoneView
StatsView = require('views/todos/stats').StatsView

$(document).ready ->
  app.initialize = ->
    app.templates =
      home: require('templates/home')
      todos:
        _new:  require('templates/todos/new')
        stats: require('templates/todos/stats')
        todo:  require('templates/todos/todo')
        todos: require('templates/todos/todos')
        
    app.collections.todos = new Todos()

    app.controllers.main = new MainController()

    app.views.home = new HomeView()
    app.views.todos = 
      _new: new NewTodoView()
      all: new TodosAllView()
      # undone: new TodosUndoneView()
      # done: new TodosDoneView()
      stats: new StatsView()

    Backbone.history.saveLocation("all") if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()



# window.app = {}
# 
# $(document).ready ->
#   app.controllers =
#     main: new require('controllers/main').MainController()
# 
#   app.models =
#     todo: require('models/todo').Todo
# 
#   app.collections =
#     todos: new require('collections/todos').Todos()
# 
#   app.views =
#     home: new require('views/home').HomeView()
#     todos:
#       _new: new require('views/todos/new').NewTodoView()
#       all: new require('views/todos/all').TodosAllView()
#       # undone: new require('views/todos/undone').TodosUndoneView()
#       # done: new require('views/todos/done').TodosDoneView()
#       stats: new require('views/todos/stats').StatsView()
# 
# 
#   Backbone.history.saveLocation("all") if Backbone.history.getFragment() is ''
#   Backbone.history.start()
