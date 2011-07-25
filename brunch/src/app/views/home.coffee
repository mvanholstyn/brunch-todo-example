homeTemplate = require('templates/home')

class exports.HomeView extends Backbone.View

  el: '#home-view'

  render: ->
    @$(@el).html homeTemplate()
    @$(@el).find('#todo-app').append app.views.todos._new.render().el
    @$(@el).find('#todo-app').append app.views.todos.all.render().el
    @$(@el).find('#todo-app').append app.views.todos.stats.render().el
    @
