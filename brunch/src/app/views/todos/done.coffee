TodoView = require('views/todos/todo').TodoView

class exports.TodosDoneView extends Backbone.View
  id: 'todos-view'

  initialize: ->
    app.collections.todos.bind 'add', @addOne
    app.collections.todos.bind 'refresh', @addAll
    app.collections.todos.bind 'all', @renderStats

  render: ->
    $(@el).html app.templates.todos()
    @

  addOne: (todo) =>
    view = new TodoView model: todo
    $(@el).find("#todos").append view.render().el

  addAll: =>
    # TODO explain why this is working - see underscore source
    app.collections.todos.done().each @addOne

  renderStats: =>
    app.views.todos.stats.render()
