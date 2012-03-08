class StatsController < ApplicationController
  def computerScore
	if (@computer ==:rock)
		if (@player == "rock"
			@computerScore += 0
			@playerScore += 0

		elsif (@player == "paper")
			@computerScore += 0
			@playerScore += 1

		elsif (@player == "scissors")
			@computerScore += 1
			@playerScore += 0

		else
			@computerScore += 0
			@playerScore += 0
		end			


	elsif (@computer ==:paper)
		if (@player == "rock"
			@computerScore += 1
			@playerScore += 0

		elsif (@player == "paper")
			@computerScore += 0
			@playerScore += 0

		elsif (@player == "scissors")
			@computerScore += 0
			@playerScore += 1

		else
			@computerScore += 0
			@playerScore += 0
		end

	elsif (@computer ==:scissors)
		if (@player == "rock"
			@computerScore += 0
			@playerScore += 1

		elsif (@player == "paper")
			@computerScore += 1
			@playerScore += 0

		elsif (@player == "scissors")
			@computerScore += 0
			@playerScore += 0

		else
			@computerScore += 0
			@playerScore += 0
		end
		
	end

  end

  def playerScore

  end

end
