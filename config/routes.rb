Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do 
    get 'contacts' => 'contacts#index'
    get 'contacts/:id' => 'contacts#show'
    # post 'contacts' => 'contacts#create'
  end

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
end
