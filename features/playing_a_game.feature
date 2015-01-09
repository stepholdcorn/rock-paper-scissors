Feature: Playing the game
	In order to play Rock Paper Scissors
	As a nostalgic player
	I want to choose an option

Scenario: Rock
	Given I am on the homepage
	When I follow "Rock"
	Then I should see "You chose ROCK"

Scenario: Paper
	Given I am on the homepage
	When I follow "Paper"
	Then I should see "You chose PAPER"

Scenario: Scissors
	Given I am on the homepage
	When I follow "Scissors"
	Then I should see "You chose SCISSORS"
