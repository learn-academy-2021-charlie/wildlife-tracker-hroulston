require 'rails_helper'

RSpec.describe Sighting, type: :model do
  it "it is not valid without a latitude" do
    newsighting = Sighting.create(date:"2021-08-12 21:50:21.817689", longitude:"34.5085°E")
    expect(newsighting.errors[:lattitude]).to_not be_empty
  end
  it "it is not valid without a longitude" do
    newsighting = Sighting.create(date:"2021-08-12 21:50:21.817689", latitude:"8.7832°S", longitude:"34.5085°E")
    expect(newsighting).to_be valid
  end
  it "it is not valid without a date" do
    newsighting = Sighting.create(date:"2021-08-12 21:50:21.817689", latitude:"8.7832°S", longitude:"34.5085°E")
    expect(newsighting).to_be valid
  end

end
