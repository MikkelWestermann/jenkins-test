Feature: Conjured Items in the Gilded Rose Inn

Scenario: A conjured item degrades twice as fast as normal items
  Given an item named "Conjured Mana Cake" with quality 9 and which has to be sold in 11 days
  When a day has passed
	Then it has to be sold in 10 days
  And its quality is 7