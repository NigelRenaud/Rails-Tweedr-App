Rails.application.routes.draw do
  root to: "shouts#index"
  get "/shouts", to: "shouts#index", as: :shouts
  get "/shouts/new", to: "shouts#new", as: :new_shout
  post "/shouts", to: "shouts#create", as: :create_shout

end
