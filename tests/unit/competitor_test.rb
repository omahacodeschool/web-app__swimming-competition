require 'test_helper'

# In all of the `setup` methods you write, make sure the first line of the method is `super`. 
# See the below code examples, if that's unclear. 
# The problem that I did not foresee is that the `setup` method you write is overwriting the `setup` method that I wrote, which contains some necessary database cleaning operations. 
# Adding `super` fixes the problem. Essentially, it makes the first thing your `setup` method does is running my `setup` method. We can talk more about this next week. I'm sorry for yet another complication. As long as you make sure `super` is the first line of your `setup` methods, you'll be fine.

class CompetitorTest < Minitest::Test
  def setup
    super
    @banana = "delish"
  end

  def test_school_name
    assert_equal("delish", @banana)
  end
end