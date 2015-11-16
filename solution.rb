require "sinatra"
require "rubygems"
require "make_todo"


get '/'  do
	@tareas = Tarea.all
	erb :index 	
end
	

post '/' do
  Tarea.create(params[:task])
  redirect '/'
end


get '/:id/delete' do
  Tarea.destroy(params[:id])
  redirect '/'
end

get '/:id/complete' do
  Tarea.update(params[:id])
  redirect '/'
end
