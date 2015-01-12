Feature: Playing the single player game
	In order to play Rock Paper Scissors
	As a single player
	I want to choose an option

	Scenario: Rock
		Given I have signed up for single player
		When I follow "Rock"
		Then I should see "You chose ROCK"

	Scenario: Paper
		Given I have signed up for single player
		When I follow "Paper"
		Then I should see "You chose PAPER"

	Scenario: Scissors
		Given I have signed up for single player
		When I follow "Scissors"
		Then I should see "You chose SCISSORS"
