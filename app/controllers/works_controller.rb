class WorksController < ApplicationController
	before_action :find_work, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	
	

	def index
		redirect_to root_url
	end

	def new
		@work = Work.new
	end

	def create
		@work = Work.new work_params
		if @work.save
			redirect_to @work, notice: "Riley, Your article was successfully saved!"
		else 
			render "new", notice: "Oh no, your article failed to save."
		end
	end

	def show
	end

	def edit
	end

	def update
		if @work.update work_params
			redirect_to @work, notice: "Article has been updated"
		else
			render "edit"
		end
	end

	def destroy
		@work.destroy
		redirect_to works_path
	end

	private 

	def work_params
		params.require(:work).permit(:description, :skills, :start_date)
	end

	def find_work
		@work = Work.find(params[:id])
	end


end
