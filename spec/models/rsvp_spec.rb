require 'rails_helper'

RSpec.describe Rsvp, type: :model do
  it {should validate_presence_of(:attending)}
end
