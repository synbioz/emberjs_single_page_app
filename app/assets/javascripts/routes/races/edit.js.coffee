EmberjsSinglePageApp.RacesEditRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'race', params.race_id

  setupController: (controller, race) ->
    controller.set 'model', race