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

	Scenario: Error link back to homepage
		Given I am on the homepage
		When I fill in "name" with ""
		When I press "Submit"
		When I follow "Home"
		Then I should see "Rock Paper Scissors"

	Scenario: Choosing the game mode
		Given I am on the homepage
		When I fill in "name" with "Steph"
		When I press "Submit"
		When I follow "Single"
		Then I should see "Make your choice Steph"

	Scenario: Play again single
		Given I am on the homepage
		When I fill in "name" with "Steph"
		When I press "Submit"
		When I follow "Single"
		When I follow "Rock"
		When I follow "Retry"
		Then I should see "Make your choice Steph"