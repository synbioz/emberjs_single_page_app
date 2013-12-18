EmberjsSinglePageApp.Router.map ()->
  @resource('races', ()->
    @route('new')
    @resource('race', { path: ':race_id' })
    @route('edit', { path: ':race_id/edit' })
  )
