class EventsController < ApplicationController
  def index
    @user=User.all
  end
end