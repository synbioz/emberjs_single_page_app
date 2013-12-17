EmberjsSinglePageApp.RaceEditController = Ember.ObjectController.extend
  actions:
    updateRace: ->
      params = $("form").serializeArray()
      race   = EmberjsSinglePageApp.Race.createRecord({})

      for param in params
        race.set(param.name, param.value)

      race.get("store").commit()
      @transitionToRoute('races')
