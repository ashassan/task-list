Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "tasks#index"
  
  patch "tasks/:id/complete", to: "tasks#toggle_complete", as: "complete"
  resources :tasks
end
