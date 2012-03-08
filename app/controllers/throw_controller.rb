class ThrowController < ApplicationController

before_filter do
    session[:player_score] ||= 0
    session[:computer_score] ||= 0
end

	def index
		render :home
		@result = "default"
	end

  def rock
	@player = "rock"
	if (@computer ==:rock)
		@result = "Tie Game. Try Again!"

	elsif (@computer ==:paper)
		@result = "Oh no, you lost. Paper beats Rock"
		session[:computer_score] += 1

	elsif  (@computer ==:scissors)
		@result = "You won! Rock beats scissors."
		session[:player_score] +=1

	else 
		@result = "Something went wrong"
	end
  end

  def paper
	@player = "paper"

	if (@computer ==:paper)
		@result = "Tie Game. Try Again!"

	elsif (@computer ==:scissors)
		@result = "Oh no, you lost. Scissors beats Paper"
		session[:computer_score] += 1

	elsif (@computer ==:rock)
		@result = "You won! Paper beats Rock."
		session[:player_score] +=1

	else
		@result = "Something went wrong"
	end
  end

  def scissors
	@player = "scissors"

	if (@computer ==:scissors)
		@result = "Tie Game. Try Again!"

	elsif (@computer ==:rock)
		@result = "Oh no, you lost. Rock beats Scissors"
		session[:computer_score] += 1

	elsif (@computer ==:paper)
		@result = "You won! Scissors beats Paper."
		session[:player_score] +=1
	else
		@result = "Something went wrong"
	end

  end

  def stats

	@playerScore = session[:player_score]
	@computerScore = session[:computer_score]
	if (@playerScore == @computerScore)
		@winner = "Tie Game! No winner."
	elsif (@playerScore > @computerScore)
		@winner = "Yay! You won the game! Can you win again?"
	elsif (@playerScore < @computerScore)
		@winner = "Aww! You lost the game. Better luck next time!"
	else
		@winner = "something went wrong somewhere"
	end

	render :stats
  end

  def end
  
	session[:player_score] = 0
	session[:computer_score] = 0
	@computerScore = session[:computer_score]
	@playerScore = session[:player_score]
	
  end

end
