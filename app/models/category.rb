class Category < ActiveRecord::Base
  has_many :pictures

  def to_param
    name
  end
end
