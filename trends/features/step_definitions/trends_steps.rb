


Given(/^the follwing trends exist:$/) do |table|

	table.hashes.each do |trend|
		Trend.create!(trend)
	end
end


When /^I enter the item code (.*?)$/ do |arg1|
	# trend = Trend.create!(:trendid =>"1")
	# assert trend.trendid =~"1" 
	# assertion for search
end

Then /^I should see item = (.*?)$/ do |arg1|
	#assertion for view of the respective search
end
