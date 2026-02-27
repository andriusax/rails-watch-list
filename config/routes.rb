Rails.application.routes.draw do
  get "/lists", to: "lists#index"

  get "/lists/new", to: "lists#new", as: :new_list
  post "/lists/", to: "lists#create"
  get "/lists/:id", to: "lists#show", as: :list

  delete "/lists/:id", to: "lists#destroy", as: :remove

  get "/lists/:list_id/bookmarks/new", to: "bookmarks#new", as: :new_list_bookmark
  post "lists/:list_id/bookmarks", to: "bookmarks#create", as: :list_bookmarks

  # get "/bookmarks/:id", to: "bookmarks#new"
  delete "/bookmarks/:id", to: "bookmarks#destroy", as: :bookmark
end
