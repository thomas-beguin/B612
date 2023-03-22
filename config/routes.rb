Rails.application.routes.draw do
  root             to: "pages#home"
  get "/about",    to: "pages#about"
  get "/contact",  to: "pages#contact"
  get "/services", to: "pages#services"

  get "/our-work", to: "projects#index", as: "/projects"
  resources :projects, except: :index
end
