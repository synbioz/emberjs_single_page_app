EmberjsSinglePageApp.RacesEditController = Ember.ObjectController.extend
  actions:
    updateRace: ->
      race   = @get('model')
      params = $("form").serializeArray()

      for param in params
        race.set(param.name, param.value)

      race.get("store").commit()
      @transitionToRoute('race', race)
