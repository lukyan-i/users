class EventsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @users=User.all
  end
  def show
    @events=Event.where(:action_type=>params[:event_type], :user_id => params[:id])
  end
end