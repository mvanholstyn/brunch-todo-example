class exports.Undone extends Backbone.View
  id: 'todos-view'

  initialize: ->
    app.collections.todos.bind 'add', @addOne
    app.collections.todos.bind 'refresh', @addAll

  render: ->
    $(@el).html app.templates.todos.todos()
    @

  addOne: (todo) =>
    view = new app.views.todos.todo model: todo
    $(@el).find("#todos").append view.render().el

  addAll: =>
    _.each app.collections.todos.remaining(), @addOne
