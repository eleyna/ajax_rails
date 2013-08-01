AjaxTodo::Application.routes.draw do
  get '/tasks/index' => 'tasks#index'
  get '/tasks/create' => 'tasks#create'
  post '/tasks/create' => 'tasks#create'
  get '/tasks/complete' => 'tasks#complete'
  put '/tasks/complete' => 'tasks#complete'
  put '/tasks/destroy' => 'tasks#destroy'
end
