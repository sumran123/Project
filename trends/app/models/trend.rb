class Trend < ActiveRecord::Base

	private

  def user_params
    params.require(:trendid, :title, :price, :quantity)
  end
end
