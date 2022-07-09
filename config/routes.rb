Rails.application.routes.draw do
  get "/posts/:post" => "posts#show"
  get "/:post" => "posts#show"
  root "posts#show", post: "home"

  get "/home" => "posts#show", as: "home"

  get "/my_first_post" => "posts#show", as: "my_first_post"

end
