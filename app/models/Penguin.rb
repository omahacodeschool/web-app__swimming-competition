class Penguin < ActiveRecord::Base

  # Get the Penguin's Rookery info
  #
  #Returns the Rookery object.
  def rookery_acess
    x = self.rookery_id
    y = Rookery.find_by_id(x)
    y
  end
end