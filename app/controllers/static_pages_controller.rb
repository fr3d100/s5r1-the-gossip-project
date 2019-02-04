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

  def show_gossip
  	@gossip = Gossip.find(params['gossip_id'])
  	puts @gossip
  end
   def show_user
  	@user = User.find(params['user_id'])
  	puts @user
  end

end
