Rails.application.routes.draw do
  get 'home/index' => "home#index" 
  post "scrape", to: "home#scrape"
  root "home#index"
end
