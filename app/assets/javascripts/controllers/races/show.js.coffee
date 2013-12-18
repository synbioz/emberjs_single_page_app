EmberjsSinglePageApp.RaceController = Ember.ObjectController.extend
  actions:
    delete: ->
      race = @store.find('race', @get('model.id'))
      race.deleteRecord()
      race.save()

      @transitionToRoute('races')
