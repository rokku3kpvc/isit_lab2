Rails.application.routes.draw do
  resources :ner_networks

  root "ner_networks#index"
end
