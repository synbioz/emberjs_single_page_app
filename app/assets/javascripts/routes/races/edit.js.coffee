EmberjsSinglePageApp.RaceEditRoute = Ember.Route.extend
  model: ->
    console.log "ygu"
    @store.find('race', params.race_id)

  setupController: (controller, races) ->
    controller.set 'content', {}