class Event < ActiveRecord::Base
  belongs_to :user
  serialize :data
end
