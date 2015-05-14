class TrendsController < ApplicationController
	def index
		@trends = Trend.all
	end
	def show
		@trend = Trend.find(params[:id])
	end
	def new
		 @trend = Trend.new
	end
	def create
		@trend = Trend.create!(trend_params)
		flash[:notice] = "#{@trend.trendid} was successfully created."
		redirect_to trends_path
	end
	def edit
		@trend = Trend.find params[:id]

	end
	def update
		@trend = Trend.find params[:id]
		@trend.update_attributes!(trend_params)
		flash[:notice] = "#{@trend.title} was successfully updated."
		redirect_to trends_path(@trend)
		 
	end
	def destroy
		@trend = Trend.find(params[:id])
		@trend.destroy
		flash[:notice] = "Trend '#{@trend.title}' deleted."
		redirect_to trends_path
	end

	private

	def trend_params
			params.require(:trend).permit(:title, :trendid, :price, :quantity)

	end
end
