class Rsvp < ActiveRecord::Base
  belongs_to :invite
  validates :attending, :inclusion => {:in => [true, false]}
  validates :adults, numericality: {greater_than_or_equal_to: 1, less_than: 10}
  validates :children, numericality: {less_than: 10}
end
