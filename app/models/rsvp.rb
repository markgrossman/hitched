class Rsvp < ApplicationRecord
  belongs_to :invite
  validates_presence_of :attending
end
