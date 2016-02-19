require 'test_helper'

class ResultTest < Minitest::Test
  def setup
    super

    @chad_leclaws = Competitor.new
    @chad_leclaws.first_name = "Chad"
    @chad_leclaws.last_name = "LeClaws"
    @chad_leclaws.save

    @hermione_granger = Competitor.new
    @hermione_granger.first_name = "Hermione"
    @hermione_granger.last_name = "Granger"
    @hermione_granger.save

    @hundred_m_race = Event.new
    @hundred_m_race.gender = "female"
    @hundred_m_race.save

    @million_m_race = Event.new
    @million_m_race.gender = "male"
    @million_m_race.save

    @chads_result = Result.new
    @chads_result.competitor_id = @chad_leclaws.id
    @chads_result.event_id = @hundred_m_race.id
    @chads_result.save

    @hermiones_result = Result.new
    @hermiones_result.competitor_id = @hermione_granger.id
    @hermiones_result.event_id = @million_m_race.id
    @hermiones_result.save

  end

  def test_display_first_name
    assert_equal(@chads_result.display_competitor_first_name, "Chad")
    refute_equal(@chads_result.display_competitor_first_name, "Hermione")
  end

  def test_display_last_name
    assert_equal(@chads_result.display_competitor_last_name, "LeClaws")
    refute_equal(@chads_result.display_competitor_last_name, "Granger")
  end

  def test_display_event_gender
    assert_equal(@chads_result.display_event_gender, "female")
    assert_equal(@hermiones_result.display_event_gender, "male")
    refute_equal(@chads_result.display_event_gender, "male")
    refute_equal(@hermiones_result.display_event_gender, "female")
  end
end