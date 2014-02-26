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
    @race = EmberjsSinglePageApp.Race.createRecord({})
    @set "model", @race

    for attr in Ember.get(EmberjsSinglePageApp.Race, 'attributes').keys.list
      @set(attr, null)

  rollbackModel: ->
    if @race.get("isDirty")
      @set('errors', null)
      for attr in Ember.get(EmberjsSinglePageApp.Race, 'attributes').keys.list
        @set(attr, null)

      @race.rollback()
      @race.deleteRecord()

  actions:
    createRace: ->
      params = $("form").serializeArray()

      for param in params
        @race.set(param.name, param.value)

      @race.validate().then( =>
        @race.save()
        @transitionToRoute('races')
      , () =>
        @set('errors', @race.get("errors"))
      )

    cancel: ->
      @rollbackModel()
      @transitionToRoute('races')
