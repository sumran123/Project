require 'spec_helper'
# require 'index'
describe TrendsController  "creating a new trend" do
	it "should redirect to index" do
		post 'create'
		flash[:notice].should_not be_nil
		response.should redirect_to(trends_path)
	end
end
