Feature: Playing the single player game
	In order to play Rock Paper Scissors
	As a single player
	I want to choose an option

	Scenario: Rock
		Given I am on the homepage
		When I fill in "name" with "Steph"
		When I press "Submit"
		When I follow "Single"
		When I follow "Rock"
		Then I should see "You chose ROCK"

	Scenario: Paper
		Given I am on the homepage
		When I fill in "name" with "Steph"
		When I press "Submit"
		When I follow "Single"
		When I follow "Paper"
		Then I should see "You chose PAPER"

	Scenario: Scissors
		Given I am on the homepage
		When I fill in "name" with "Steph"
		When I press "Submit"
		When I follow "Single"
		When I follow "Scissors"
		Then I should see "You chose SCISSORS"
