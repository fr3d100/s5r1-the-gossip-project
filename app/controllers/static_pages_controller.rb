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
  	@user_signin_date = @user.created_at.strftime("Inscrit le %d/%m/%Y") 
  	puts @user_signin_date
  	puts @user
  end

end
