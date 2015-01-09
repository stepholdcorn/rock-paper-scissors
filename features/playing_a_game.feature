Feature: Playing the game
	In order to play Rock Paper Scissors
	As a nostalgic player
	I want to choose an option

Scenario: Rock vs Scissors
	Given I am on the homepage
	When I follow "Rock"
	Then I should see "The computer chose scissors. You win! Yay!"

Scenario: Paper vs Rock
	Given I am on the homepage
	When I follow "Paper"
	Then I should see "The computer chose rock. You win! Yay!"

Scenario: Scissors vs Paper
	Given I am on the homepage
	When I follow "Scissors"
	Then I should see "The computer chose paper. You win! Yay!"
