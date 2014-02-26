class EventsController < ApplicationController
  before_filter :authenticate_user!
  def index
    @user=User.all
  end
  def show
    @event=Event.where(:action_type=>params[:event_type], :user_id => params[:id])
  end
end