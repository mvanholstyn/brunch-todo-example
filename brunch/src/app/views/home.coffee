class exports.HomeView extends Backbone.View
  el: '#home-view'

  render: ->
    @$(@el).html app.templates.home()
    @$(@el).find('#todo-app').append new app.views.todos._new().render().el
    @$(@el).find('#todo-app').append new app.views.todos.all().render().el
    @$(@el).find('#todo-app').append new app.views.todos.stats().render().el
    @
