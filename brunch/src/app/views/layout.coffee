class exports.Layout extends Backbone.View
  el: '#home-view'

  render: ->
    @$(@el).html app.templates.layout()
    @$(@el).find('#todo-app').append new app.views.todos.new().render().el
    # @$(@el).find('#todo-app').append new app.views.todos.all().render().el
    # @$(@el).find('#todo-app').append new app.views.todos.stats().render().el
    @
