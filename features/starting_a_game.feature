Feature: Starting the game
	In order to play Rock Paper Scissors
	As a nostalgic player
	I want to start the game

	Scenario: Registering
		Given I am on the homepage
		When I fill in "name" with "Steph"
		When I press "Submit"
		Then I should see "Welcome to the game Steph"

	Scenario: Blank name error
		Given I am on the homepage
		When I fill in "name" with ""
		When I press "Submit"
		Then I should see "Please enter a name"