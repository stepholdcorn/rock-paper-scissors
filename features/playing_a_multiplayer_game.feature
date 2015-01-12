Feature: Playing the multi player game
	In order to play Rock Paper Scissors
	As a multi player game
	I want to choose an option

	Scenario: Rock
		Given I have signed up for multiplayer
		When I follow "Rock"
		Then I should see "You chose ROCK, waiting for your opponent"

	Scenario: Paper
		Given I have signed up for multiplayer
		When I follow "Paper"
		Then I should see "You chose PAPER, waiting for your opponent"

	Scenario: Scissors
		Given I have signed up for multiplayer
		When I follow "Scissors"
		Then I should see "You chose SCISSORS, waiting for your opponent"