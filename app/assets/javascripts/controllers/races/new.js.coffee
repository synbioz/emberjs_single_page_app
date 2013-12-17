EmberjsSinglePageApp.RacesNewController = Ember.ObjectController.extend
  actions:
    createRace: ->
      params = $("form").serializeArray()
      race   = EmberjsSinglePageApp.Race.createRecord({})

      for param in params
        race.set(param.name, param.value)

      race.get("store").commit()
      @transitionToRoute('races')
