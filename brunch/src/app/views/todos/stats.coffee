class exports.StatsView extends Backbone.View
  id: 'stats-view'

  events:
    'click .todo-clear a' : 'clearCompleted'

  render: ->
    data =
      total: app.collections.todos.length
      done: app.collections.todos.done().length
      remaining: app.collections.todos.remaining().length

    @$(@el).html(app.templates.todos.stats(stats: data))
    @

  clearCompleted: ->
    app.collections.todos.clearCompleted()
