class StaticPagesController < ApplicationController
  def team
  end

  def contact
  end

  def index	
  	@gossips = Gossip.all
  	puts Gossip.all
  end

  def welcome
  	@first_name = params['first_name']
  end

end
