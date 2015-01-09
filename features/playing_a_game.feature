Feature: Playing the game
	In order to play Rock Paper Scissors
	As a nostalgic player
	I want to choose an option

Scenario
	Given I am on the homepage
	When I follow "Rock"
	Then I should see "You win! Yay!"