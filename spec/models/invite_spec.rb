require 'rails_helper'

RSpec.describe Invite, type: :model do
  it {should validate_presence_of(:name)}
end
