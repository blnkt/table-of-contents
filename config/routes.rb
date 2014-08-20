Rails.application.routes.draw do

  match('/', {via: :get, to: 'chapters#index'})
  match('chapters/:id', {:via => :get, :to => 'chapters#show'})
  match('chapters/:chapter_id/sections/:id', {:via => :get, :to => 'sections#show'})
  match('lessons/:id', {via: :get, to: 'lessons#show'})
end
