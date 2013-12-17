EmberjsSinglePageApp.RaceShowController = Ember.ObjectController.extend
  actions:
    deleteRace: ->
      console.log "delete"
      @transitionToRoute('races')
