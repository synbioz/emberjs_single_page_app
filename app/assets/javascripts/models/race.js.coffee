EmberjsSinglePageApp.Race = DS.Model.extend
  name: DS.attr('string')
  description: DS.attr('string')
  city: DS.attr('string')
  county: DS.attr('string')
  country: DS.attr('string')
  start_at: DS.attr('string')

  showUrl: ->
    "/#/races/" + @get('id')
