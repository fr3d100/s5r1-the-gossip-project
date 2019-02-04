Rails.application.routes.draw do
	root 'static_pages#index'
  get '/team', to: 'static_pages#team'
  get '/contact', to: 'static_pages#contact'
  get '/welcome/:first_name', to: 'static_pages#welcome'
  get 'gossip/:gossip_id', to: 'static_pages#show', as: 'show_gossip'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
