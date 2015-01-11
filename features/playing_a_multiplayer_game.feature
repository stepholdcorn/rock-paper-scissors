Feature: Playing the multi player game
	In order to play Rock Paper Scissors
	As a multi player
	I want to choose an option

	Scenario: Rock
		Given I am on the selection_multi page
		When I follow "Rock"
		Then I should see "You chose ROCK, waiting for your opponent"

	Scenario: Paper
		Given I am on the selection_multi page
		When I follow "Paper"
		Then I should see "You chose PAPER, waiting for your opponent"

	Scenario: Scissors
		Given I am on the selection_multi page
		When I follow "Scissors"
		Then I should see "You chose SCISSORS, waiting for your opponent"