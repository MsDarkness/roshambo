class ApplicationController < ActionController::Base
  protect_from_forgery

	before_filter do
	  @moves = {:rock => :scissors, :paper => :rock, :scissors => :paper}
		@throw = @moves.keys
	  @computer = @throw.sample	
	end

end
