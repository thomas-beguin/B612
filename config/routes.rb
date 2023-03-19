Rails.application.routes.draw do
  root             to: "pages#home"
  get "/about",    to: "pages#about"
  get "/contact",  to: "pages#about"
  get "/services", to: "pages#services"
end
