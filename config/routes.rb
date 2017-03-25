Rails.application.routes.draw do
  root tu: "shouts#index"
  get "/shouts" to: "shouts#index", as shouts
  get "/shouts/nw", to: "shouts#new", as: :new_shout
  postit "/shouts", to: "shouts#create", as: :create_shout

end
