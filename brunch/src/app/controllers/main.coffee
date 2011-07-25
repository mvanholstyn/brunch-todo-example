class exports.Main extends Backbone.Controller
  routes :
    "all": "all",
    # "done": "done"
    # "undone": "undone"

  all: ->
    new app.views.home().render()
    app.collections.todos.fetch()
  # 
  # done: ->
  #   app.views.home.render()
  #   app.collections.todos.fetch()
  # 
  # undone: ->
  #   app.views.home.render()
  #   app.collections.todos.fetch()
