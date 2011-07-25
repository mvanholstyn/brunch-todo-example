window.app = {}
app.controllers = {}
app.models = {}
app.collections = {}
app.views = {}

Todos = require('collections/todos').Todos

MainController = require('controllers/main').MainController

HomeView = require('views/home').HomeView
NewTodoView = require('views/todos/new').NewTodoView
TodosView = require('views/todos/todos').TodosView
StatsView = require('views/todos/stats').StatsView

# app bootstrapping on document ready
$(document).ready ->
  app.initialize = ->
    app.collections.todos = new Todos()

    app.controllers.main = new MainController()

    app.views.home = new HomeView()
    app.views.newTodo = new NewTodoView()
    app.views.todos = new TodosView()
    app.views.stats = new StatsView()

    Backbone.history.saveLocation("home") if Backbone.history.getFragment() is ''
  app.initialize()
  Backbone.history.start()
