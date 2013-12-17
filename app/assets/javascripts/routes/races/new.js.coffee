EmberjsSinglePageApp.RacesNewRoute = Ember.Route.extend
  model: ->
    @store.find('race')

  setupController: (controller, races) ->
    controller.set 'content', {}