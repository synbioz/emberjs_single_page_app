EmberjsSinglePageApp.RaceShowRoute = Ember.Route.extend
  model: (params) ->
    console.log params
    @store.find('race', params.race_id)

  setupController: (controller, race) ->
    console.log race
    console.log model
    controller.set('model', race)