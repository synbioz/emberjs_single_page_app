EmberjsSinglePageApp.RacesIndexRoute = Ember.Route.extend
  model: ->
    @store.find 'race'

  setupController: (controller, races) ->
    controller.set 'model', races