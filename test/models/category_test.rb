require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
   test "the add new category" do
     category=Category.new
     assert !category.save
   end
end
