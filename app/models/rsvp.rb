class Rsvp < ActiveRecord::Base
  belongs_to :invite
  enum status: ["yes", "no"]
end
