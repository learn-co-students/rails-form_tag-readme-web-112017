Rails.application.routes.draw do
 #resources :posts, only: [:new, :index, :create]

#resources :posts, only: [:index] does this:
get "/posts", to: "posts#index"
#(WHICH this line silently creates a helper path -- as: :posts_path as a label for this URL (i.e. represents ""/posts"))

# resources :posts, only: [:new] does this:
get "/posts/new", to: "posts#new", as: "new_post"
#(without the as: ---  this line silently creates a helper path posts_new_path as a label for this URL, which is then OVERWRITTEN by the as: "new_post")


#resources :posts, only: [:create] does this:
post "/posts", to: "posts#create"


end
