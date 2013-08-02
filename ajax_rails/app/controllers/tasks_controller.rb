class TasksController < ApplicationController

	def index
		@tasks = Task.all
		respond_to do |format|
    	format.html
    	format.json { render :json => @tasks.to_json }
  	end
	end

	def create
		@task = Task.new(name: params[:task])
		@task.save;

		respond_to do |format|
			format.json { render :json => @task }
		end
	end

	def complete
		@task = Task.find(params[:id])
		@task.update_attribute(:completed, true)
		@task.save
		respond_to do |format|
			format.js
		end
	end

	def destroy
		@task = Task.find(params[:id])
		@task.destroy
		respond_to do |format|
			format.js
		end
	end

end