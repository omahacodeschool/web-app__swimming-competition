require 'test_helper'

class SwimmerTest < Minitest::Test
  def setup
      @brake = "works"
  end

  def test_name_school
    assert_includes("works", @brake)
  end
end

# class Swimmer_test < ActiveRectord::Base


#   def setup
#     @swimmer1 = Swimmer.new
#     @swimmer1.name = "Ben Seaver"
#     @swimmer1.school_id = 
#     @swimmer1.save

#     @swimmer2 = Swimmer.new
#     @swimmer2.name = "Peter Brady"
#     @swimmer2.save
#                                               #Just one setup for multiple tests
#     @school1 = School.new
#     @school1.name = "Nebraska State"
#     @school1.swimmer_id = @swimmer1.id
#     @school1.save

#     @school2 = School.new
#     @school2.name = "Nebraska"
#     @school2.swimmer_id = @swimmer2.id
#     @school2.save
#                                               #tets methods connecting tables
#     @event1 = Event.new
#     @event1.
#   end

#   def test
#     assert_includes(@swimmer1.name,"Ben Seaver")
#     assert_includes(@swimmer2.name,"Peter Brady")
#     assert_includes(@school1.name,"Nebraska State")
#     assert_includes(@school1.swimmer_id,"@swimmer1.id")#or put the actual name **
#     assert_includes(@school2.name,"Nebraska")
#     assert_includes(@school2.swimmer_id,"@swimmer2.id")
#     assert_includes(excersie, verify)

#     defute_includes(excersise, verify false)

#   end
# end