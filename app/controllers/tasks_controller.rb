class TasksController < ApplicationController

	def new	
	end

	def create
		@task = Task.new(task_params)

		@task.save
		redirect_to tasks_path
	end

	def index
		@tasks = Task.all
	end

	private
		def task_params
			params.require(:task).permit(:problem)
		end
end
