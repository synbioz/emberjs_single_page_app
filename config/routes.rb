EmberjsSinglePageApp::Application.routes.draw do
  namespace :api do
    resources :races
  end

  root "home#index"
end
