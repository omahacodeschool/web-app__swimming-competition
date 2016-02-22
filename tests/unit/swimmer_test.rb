require 'test_helper'

class SwimmerTest < Minitest::Test
  def setup
    super

    @chris = Swimmer.new
    @chris.swimmer_name = "Chris Foral"
    @chris.save

    @champ = Swimmer.new
    @champ.swimmer_name = "Champ C"
    @champ.save

    @nick = Swimmer.new
    @nick.swimmer_name = "Nick D"
    @nick.save

    @joe = Swimmer.new
    @joe.swimmer_name = "Joe O"
    @joe.save

    @t1 = Team.new
    @t1.team_name = "Omaha Code School"
    @t1.swimmer_id = @chris.id
    @t1.save

    @t2 = Team.new
    @t2.team_name = "Best Friends League"
    @t2.swimmer_id = @nick.id
    @t2.save


    @t3 = Team.new
    @t3.team_name = "Axis of Evil"
    @t3.swimmer_id = @joe.id
    @t3.save

    @t4 = Team.new
    @t4.team_name = "The Wet Bandits"
    @t4.swimmer_id = @champ.id
    @t4.save
  end

  def test_swimmer_team
    assert_includes(@chris.teams, @t1)
    assert_includes(@champ.teams, @t4)
    assert_includes(@nick.teams, @t2)
    assert_includes(@joe.teams, @t3)
    refute_includes(@chris.teams, @t4)
    refute_includes(@champ.teams, @t3)
  end
end

# Methods to test yet
# class SwimmerTest < Minitest::Test
#   def setup
#     @banana = "delicious"
#   end

#   def test_swimmer_team
#     assert_equal("delicious", @banana)
#   end

# end

#   def swimmer_team
#     x = self.team_id
#     y = Team.find_by_id(x)

#     return y.team_name
#   end

#   def swimmer_conference
#     a = self.team_id
#     b = Team.find_by_id(a)
#     c = b.conference_id
#     d = Conference.find_by_id(c)

#     return d.conference_name
#   end



    # @s1 = Swimmer.new
    # @m4.title = "Hurt Locker"
    # @m4.director_id = @katherine_bigelow.id
    # @m4.save

    # assert_includes()
    # assert_includes()
    # assert_includes()
    # refute_includes(@david_lean.movies, @m4)