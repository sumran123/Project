require 'spec_helper'
describe TrendsController do
  describe "GET index" do
    it "assigns @trends" do
      trend = Trend.create
      get :index
      expect(assigns(:trends)).to eq([trend])
    end
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
	describe "new trend" do
	  	it "renders the new template" do
	      post :new
	      expect(response).to render_template("new")
	    end
	end
	describe "show" do 
		# before :all do
			# Trend.create(:id=>"1")
			# @trend=mock(Trend, :id =>"1", :title =>"pants", :price =>"12", :quantity =>"12",:created_at =>"2015-05-14 16:18:51", :updated_at=> "2015-05-14 16:18:51", :trendid =>"1")
			# @trend=mock(Trend,:id =>"1", :title =>"pants",:price => "12",:quantity => "12", :trendid=>"1")
			# Trend.stub(:show).with("1").and_return(@trend)
		# end
		# mock(Trend, id: =>"1", :title =>"pants", price: =>"12", quantity: =>"12",created_at: =>"2015-05-14 16:18:51", updated_at: "2015-05-14 16:18:51", trendid: =>"1")

		it "assigns the requested trend to @trend" do 
			trend = Trend.create(:id=>"1")
			get :show, :id =>"1"
			# expect(assigns(:trend)).to eq([trend])
		end
		it "renders the #show view" do
			@trend = Trend.create(:id=>"1") 
			get :show, :id => "1" 
			# trend=Factory(:trend)
			expect(response).to render_template("show")
		end 
	end
end