class exports.Home extends Backbone.View
  el: '#home-view'

  render: ->
    @$(@el).html app.templates.home()
    @$(@el).find('#todo-app').append new app.views.todos.new().render().el
    @$(@el).find('#todo-app').append new app.views.todos.all().render().el
    @$(@el).find('#todo-app').append new app.views.todos.stats().render().el
    @
