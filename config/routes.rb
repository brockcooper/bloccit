Rails.application.routes.draw do

  get 'summaries/new'

  get 'summaries/show'

  get 'summaries/edit'

  devise_for :users
  resources :topics do
    resources :posts, except: [:index] do
      resources :summaries, except: [:index]
    end
  end

  get 'about' => 'welcome#about'
  get 'contact' => 'welcome#contact'

  root to: 'welcome#index'

end
