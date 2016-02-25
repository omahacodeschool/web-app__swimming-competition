require 'test_helper'

class CompetitionTest < Minitest::Test
  def setup
    super
    
    @city1 = Region.new
    @city1.city = "Albuquerque"
    @city1.save

    @contestant1 = Contestant.new
    @contestant1.first_name = "Marlon"
    @contestant1.last_name = "Brando"
    @contestant1.region_id = 1
    @contestant1.save

    @chili1 = Chili.new
    @chili1.name = "STELLAAAA's Chili"
    @chili1.contestant_id = 1
    @chili1.save

    @competition1 = Competition.new
    @competition1.name = "Street Car Chili Competition"
    @competition1.save

    @score1 = Result.new
    @score1.chili_id = 1
    @score1.competition_id = 1
    @score1.appearance = 9
    @score1.aroma = 9
    @score1.texture = 4
    @score1.flavor = 8
    @score1.heat = 8
    @score1.overall = @score1.appearance + @score1.aroma + @score1.texture + @score1.flavor + @score1.heat
    @score1.save
  end
#need to loop through this its a collection
  def test_get_contestant_info
    assert_includes(@competition1.contestants.first_name, @contestant1.first_name)
    assert_includes(@competition1.contestants.last_name, @contestant1.last_name)
  end
end