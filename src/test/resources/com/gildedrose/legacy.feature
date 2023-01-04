Feature: Gilded Rose behaviour of the legacy code

// Example of a scenario
Scenario: Regular items degrade in quality the older they get
	Given an item named "Regular Item" with quality 9 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 8
Scenario: Regular items degrade in quality twice as fast when their sell by date has passed
	Given an item named "Regular Item" with quality 9 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 7
Scenario: The quality of an item is never negative
	Given an item named "Regular Item" with quality 0 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 0
Scenario: Aged Brie increases in quality the older it gets
	Given an item named "Aged Brie" with quality 9 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 10
Scenario: The quality of an item is never more than 50
	Given an item named "Aged Brie" with quality 50 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 50
Scenario: An item can never have its quality increase above 50
	Given an item named "Aged Brie" with quality 49 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 50
Scenario: Aged Brie will increase twice as fast after the sell by date
	Given an item named "Aged Brie" with quality 9 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 11
Scenario: Sulfuras, being a legendary item, never has to be sold or decreases in quality
	Given an item named "Sulfuras, Hand of Ragnaros" with quality 80 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in 0 days
	And its quality is 80
Scenario: Backstage passes increase in quality as their sell in date approaches
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 9 and which has to be sold in 11 days
	When a day has passed
	Then it has to be sold in 10 days
	And its quality is 10
Scenario: Backstage passes increase in quality by 2 when there are 10 days or less
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 9 and which has to be sold in 10 days
	When a day has passed
	Then it has to be sold in 9 days
	And its quality is 11
Scenario: Backstage passes increase in quality by 3 when there are 5 days or less
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 9 and which has to be sold in 5 days
	When a day has passed
	Then it has to be sold in 4 days
	And its quality is 12
Scenario: Backstage passes quality drops to 0 after the concert
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 9 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 0
Scenario: Backstage pass quality cannot be more than 50
	Given an item named "Backstage passes to a TAFKAL80ETC concert" with quality 49 and which has to be sold in 5 days
	When a day has passed
	Then it has to be sold in 4 days
	And its quality is 50
Scenario: Regular item can't be less than 0
	Given an item named "Regular Item" with quality 0 and which has to be sold in 0 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 0
Scenario: Sulfuras quality doesn't change
	Given an item named "Sulfuras, Hand of Ragnaros" with quality 80 and which has to be sold in -1 days
	When a day has passed
	Then it has to be sold in -1 days
	And its quality is 80