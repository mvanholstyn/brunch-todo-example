window.app = {}
app.controllers = {}
app.models = {}
app.collections = {}
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
