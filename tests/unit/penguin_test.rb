require 'test_helper'

class PenguinTest < Minitest::Test
  def setup
    super

    @south_pole = Rookery.new
    @south_pole.name = "South Pole University"
    @south_pole.save

    @polar_tech = Rookery.new
    @polar_tech.name = "Polar Tech"
    @polar_tech.save

    @event_1 = Event.new
    @event_1.name = "100m Waddle"
    @event_1.save

    @event_2 = Event.new
    @event_2.name = "Polar Plunge"
    @event_2.save

    @audrey_hepburn = Penguin.new
    @audrey_hepburn.last_name = "Hepburn"
    @audrey_hepburn.first_name = "Audrey"
    @audrey_hepburn.rookery_id = @polar_tech.id
    @audrey_hepburn.save

    @duke_ellington = Penguin.new
    @duke_ellington.last_name = "Ellington"
    @duke_ellington.first_name = "Duke"
    @duke_ellington.rookery_id = @south_pole.id
    @duke_ellington.save
    
    @result_1 = Result.new
    @result_1.penguin_id = @duke_ellington.id
    @result_1.event_id = @event_1.id
    @result_1.time = 98
    @result_1.save

    @result_2 = Result.new
    @result_2.penguin_id = @audrey_hepburn.id
    @result_2.event_id = @event_2.id
    @result_2.time = 99
    @result_2.save

  end


  def test_rookery_access
    assert_equal(@polar_tech.name, @audrey_hepburn.rookery_access.name)
    assert_equal(@south_pole.id, @duke_ellington.rookery_access.id)
    assert_equal(@south_pole.name, @duke_ellington.rookery_access.name)
  end  


    #  Test for delete_results method. Does not work. Is there a way to test this?
#   def test_delete_results
#     assert_equal(@result_2.delete, @audrey_hepburn.delete_results)
#   end

end