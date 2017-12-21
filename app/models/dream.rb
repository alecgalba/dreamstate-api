class Dream < ApplicationRecord
  validates :name, :description, :sleep_hours presence: true

  before_create :set_likes

  def set_likes
    self.likes = 0
  end

end
