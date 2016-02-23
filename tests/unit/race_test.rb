require 'test_helper'

# class MoviesTest < Minitest::Test
#   # These lines of code should not be edited. They add necessary
#   # functionality for running our "acceptance tests".
#   def app
#     MyApp
#   end

#   # The actual tests go below this comment.

#   def setup
#     @david_lean = Director.new
#     @david_lean.name = "David Lean"
#     @david_lean.save

#     @m1 = Movie.new
#     @m1.title = "Dr. Zhivago"
#     @m1.director_id = @david_lean.id
#     @m1.save
#   end

#   def test_hello_world
#     get '/movies'

#     assert(last_response.ok?)

#     assert_includes(last_response.body, "Dr. Zhivago")
#   end
# end



class RaceTest < Minitest::Test
    
  def app
    MyApp
  end#end of MyApp

  def setup
        super

    @race1 = Race.new
    @race1.event_name = "100m Swim to Loyal Horse on Opposite Shore"
    @race1.save

    @race2 = Race.new
    @race2.event_name = "100m Swim Under Overturned Canoe"
    @race2.save

    @race3 = Race.new
    @race3.event_name = "100m Walk on Water"
    @race3.save
  end#end of setup

  def test_get_race_schedule

      # setup method gets run here by testing framework

      assert_includes (@race1), ("100m Swim to Loyal Horse on Opposite Shore")
      assert_includes (@race2), ("100m Swim Under Overturned Canoe")
      refute_includes (@race3), ("100m Walk on Water") # this is new kind of assertion!

  end#end of test_get_race_schedule

end#end of class