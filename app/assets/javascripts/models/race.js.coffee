EmberjsSinglePageApp.Race = DS.Model.extend Ember.Validations.Mixin,
  name:        DS.attr('string')
  description: DS.attr('string')
  city:        DS.attr('string')
  county:      DS.attr('string')
  country:     DS.attr('string')
  start_at:    DS.attr('string')

  validations:
    name:
      presence:
        message: 'doit être rempli'
      length:
        minimum: 3
        messages:
          tooShort: 'minimum 3 caractères'
    county:
      inclusion:
        in: ['Nord Pas-de-Calais', 'Basse-Normandie']
        allowBlank: true
        message: 'doit être soit dans le Nord Pas-de-Calais, soit en Basse-Normandie'
    start_at:
      presence:
        message: 'doit être rempli'
      format:
        with: /(0[1-9]|[12][0-9]|3[01])[-](0[1-9]|1[012])[-](19|20)\d\d/
        allowBlank: false
        message: 'format attendu dd-mm-yyyy (ex. : 12-05-2015)'
