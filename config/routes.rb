Rails.application.routes.draw do
  root "static#index"

  devise_for :users, path: "authentication/user", controllers: {
      sessions: "authentication/user/sessions",
      passwords: "authentication/user/passwords",
      registrations: "authentication/user/registrations"
    }
end
