Feature: Search an item

As a shopper or Admin
So that i dont have to search the entire website manually.
I want to be able to search and item given an item code
Background: Given that there are items in the database
Given the follwing trends exist:

| trendid | title  | price | quantity |id|

| 10    |Top    |1200    |28  |1 |
| 20    |Jeans  |1200    |28  |2 |
| 30    |hat    |1200    |28  |3 |
| 40    |slipper|1200    |28  |4 |
| 50    |socks  |1200    |28  |5 |

And  I am on the Trends home page

Scenario: search items by item_code
 
When I enter the item code "10"
Then I should see item = "Top"

When I enter the item code "20" 
Then I should see item = "Jeans"

When I enter the item code "30" 
Then I should see item = "hat"

When I enter the item code "40" 
Then I should see item = "slipper"

When I enter the item code "50" 
Then I should see item = "socks"