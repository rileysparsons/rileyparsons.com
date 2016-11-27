class JobsController < ApplicationController
	before_action :find_job, only: [:show, :destroy, :update, :edit]


	def index
		redirect_to root_path
	end

	def new
		@job = Job.new
	end

	def create
		@job = Job.new post_params
		if @job.save
			redirect_to @job, notice: "Job creation successful"
		else
			render "new", notice: "Uh oh, your job failed to save"
		end
	end

	def show
	end

	def edit
	end

	def update
		if @post.update post_params
			redirect_to @post, notice: "Job update successful"
		else
			render "edit"
		end
	end

	def destroy
		@job.destroy
		redirect_to jobs_path
	end 

	private

	def post_params
		params.require(:job).permit(:title, :description, :link, :finishedDate)
	end

	def find_job
		@job = Job.find(params[:id])
	end

end
