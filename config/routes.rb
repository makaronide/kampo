Rails.application.routes.draw do
  get 'survey/condition' => 'coditions#name'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#top'
  get 'survey/question' => 'qusestions#content'
end
