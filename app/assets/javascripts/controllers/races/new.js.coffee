EmberjsSinglePageApp.RacesNewController = Ember.ObjectController.extend
  content: null
  name: null
  start_at: null
  description: null
  city: null
  county: null
  country: null
  errors: null

  startEditing: ->
    @race   = EmberjsSinglePageApp.Race.createRecord({})
    @set "model", @race

  rollbackModel: ->
    if @race.get("isDirty")
      @set('errors', null)
      for attr in Ember.keys(Ember.meta(EmberjsSinglePageApp.Race.proto()).descs)
        @set(attr, null)

      @race.rollback() 
      @race.deleteRecord()

  actions:
    createRace: ->
      params = $("form").serializeArray()

      for param in params
        @race.set(param.name, param.value)

      @race.save().then( () =>
        @transitionToRoute('races')
      , (errors) =>
        @set('errors', errors)
        @race.deleteRecord()
      )

    cancel: ->
      @rollbackModel()
      @transitionToRoute('races')
