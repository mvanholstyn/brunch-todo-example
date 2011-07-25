TodoView = require('views/todos/todo').TodoView
todosTemplate = require('templates/todos/todos')

class exports.TodosUndoneView extends Backbone.View

  id: 'todos-view'

  initialize: ->
    app.collections.todos.bind 'add', @addOne
    app.collections.todos.bind 'refresh', @addAll
    app.collections.todos.bind 'all', @renderStats

  render: ->
    $(@el).html todosTemplate()
    @

  addOne: (todo) =>
    view = new TodoView model: todo
    $(@el).find("#todos").append view.render().el

  addAll: =>
    # TODO explain why this is working - see underscore source
    app.collections.todos.remaining().each @addOne

  renderStats: =>
    app.views.todos.stats.render()
