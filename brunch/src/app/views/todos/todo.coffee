class exports.Todo extends Backbone.View
  tagName:  "li"

  events:
    'click .check'           : 'toggleDone'
    'dblclick .todo-content' : 'edit'
    'click .todo-destroy'    : 'clear'
    'keypress .todo-input'   : 'updateOnEnter'

  initialize: ->
    _.bindAll(this, "remove")

    @model.bind('change', @render)
    @model.bind('destroy', @remove)

  render: =>
    @$(@el).html(app.templates.todos.todo(todo: @model.toJSON()))
    # Bind event directly to input, cause older browsers doesn't
    # support this event on several types of elements.
    # Originally, this event was only applicable to form elements.
    @$('.todo-input').bind 'blur', @update
    @

  toggleDone: ->
    @model.toggle()

  edit: ->
    @$(@el).addClass "editing"
    $('.todo-input').focus()

  update: =>
    @model.save(content: @$('.todo-input').val())
    @$(@el).removeClass "editing"

  updateOnEnter: (e) ->
    @update() if e.keyCode is $.ui.keyCode.ENTER

  remove: ->
    $(@el).remove()

  clear: ->
    @model.clear()
