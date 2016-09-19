class GoalController < ApplicationController
before_action :authenticate_user!
  def index
  	@goal_short_period = Goal.where(id_user: current_user.id, type_period: 1)
  	@goal_mid_period   = Goal.where(id_user: current_user.id, type_period: 2)
  	@goal_lomg_period  = Goal.where(id_user: current_user.id, type_period: 3)
  end

  def save
  	if Goal.where(id_user: current_user.id, type_period: 1).empty?
	  	goal = Goal.new
	else
		goal = Goal.where(id_user: current_user.id, type_period: 1)[0]
	end
  	goal.id_user      = current_user.id
  	goal.what         = params[:what_1]
  	goal.cost         = params[:cost_1]
  	goal.when         = americanDateFormatToSqlFormat(params[:when_1])
  	goal.how          = params[:how_1]
  	goal.where_invest = params[:where_invest_1]
  	goal.type_period  = 1
  	goal.save
	
	if Goal.where(id_user: current_user.id, type_period: 2).empty?
		goal2 = Goal.new
	else
		goal2 = Goal.where(id_user: current_user.id, type_period: 2)[0]
	end
  	goal2.id_user      = current_user.id
  	goal2.what         = params[:what_2]
  	goal2.cost         = params[:cost_2]
  	goal2.when         = americanDateFormatToSqlFormat(params[:when_2])
  	goal2.how          = params[:how_2]
  	goal2.where_invest = params[:where_invest_2]
  	goal2.type_period  = 2
  	goal2.save

  	if Goal.where(id_user: current_user.id, type_period: 3).empty?
  		goal3 = Goal.new
  	else
  		goal3 = Goal.where(id_user: current_user.id, type_period: 3)[0]
  	end
  	goal3.id_user      = current_user.id
  	goal3.what         = params[:what_3]
  	goal3.cost         = params[:cost_3]
  	goal3.when         = americanDateFormatToSqlFormat(params[:when_3])
  	goal3.how          = params[:how_3]
  	goal3.where_invest = params[:where_invest_3]
  	goal3.type_period  = 3
  	goal3.save
  	redirect_to goal_index_path
  end

end
