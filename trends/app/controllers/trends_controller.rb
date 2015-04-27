class TrendsController < ApplicationController
	def index
		@trends = Trend.all
	end
	def show
		@trend = Trend.find(params[:id]) 
	end
	def new
		 
	end
	def create
		  @trend = Trend.create!(trend_params)
		  flash[:notice] = "#{@trend.trendid} was successfully created."
		  redirect_to trends_path
	end
	def edit

	end
	def update
		 
	end
	def destroy
		 
	end
	def trend_params
		params[:trend].permit(:title, :trendid, :price, :quantity)

	end
end
