


Given(/^the follwing trends exist:$/) do |table|

	table.hashes.each do |trend|
		Trend.create!(trend)
	end
end


When(/^I enter the item code "(.*?)"$/) do |arg1|
	trend = Trend.find_by(:trendid =>arg1)
end

Then(/^I should see item = "(.*?)"$/) do |arg1|

end
