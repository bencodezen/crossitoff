class Item < ActiveRecord::Base
  belongs_to :user

  def remaining_time
    new_date = self.created_at + 7.days
    time_remaining = (new_date - self.created_at) / 24.hour.seconds
    time_remaining.to_i
  end
end
