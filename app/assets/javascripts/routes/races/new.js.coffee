EmberjsSinglePageApp.RacesNewRoute = Ember.Route.extend
  model: ->
    @store.find 'race'

  setupController: (controller) ->
    controller.startEditing()