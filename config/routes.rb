Rails.application.routes.draw do

  	# Generated resources for proverbs
    resources :proverbs

    # Setting up home route and making it the root url
    get 'home', to: 'home#martok', as: :home
    root 'home#martok'

end
