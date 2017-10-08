require 'rails_helper'

RSpec.describe Calendar, type: :model do
  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:launch_date) }
  it { should validate_presence_of(:movie_id) }
end
