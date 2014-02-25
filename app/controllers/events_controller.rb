class EventsController < ApplicationController
  def index
    @user=User.all
  end
  def comments
    @event=Event.where(:action_type=> "comments")
  end
end