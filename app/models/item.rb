class Item < ActiveRecord::Base
  belongs_to :user

  before_create :set_finished

  def remaining_time
    new_date = self.created_at + 7.days
    time_remaining = (new_date - Time.now) / 24.hour.seconds
    time_remaining.to_i
  end

  def deadline
    self.created_at + 7.days
  end

  private

  def set_finished
    self.finished = false
    nil
  end

end
