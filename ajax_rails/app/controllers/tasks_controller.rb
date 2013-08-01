class TasksController < ApplicationController
	# STEP 8: Make the index action respond to json requests with json containing the array from `Task.all`

	# STEP 21: In the create action, instantiate a new `Task` object and save filling in the `name` parameter
	# STEP 22: In the create action, set up `respond_to` to a json request with json containing the saved task object

	# STEP 25: Find the task by id and set it's `completed` property to `true` in the `TasksController#complete` action
	# STEP 26: Make the `TasksController#complete` `respond_to` respond to a javascript request
	def index
	end

	def create
	end

	def complete
	end

	def destroy
	end

end
