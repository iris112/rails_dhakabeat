Rails.application.routes.draw do

  scope "(:locale)", locale: /#{I18n.available_locales.join("|")}/ do
    root 'pages#index'
    get 'about', to: 'pages#about'
  end
end
