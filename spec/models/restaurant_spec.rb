require 'rails_helper'

RSpec.describe Restaurant do # , type: :model do
  context "testing total of products" do
    let(:restaurant) {FactoryBot.create(:restaurant)}
    let(:total) {rand(5)}

    before do
      (1 .. total).each do |item|
        FactoryBot.create(:product, restaurant: restaurant)
      end
    end

    it "returns total of products for a specific restaurant" do
        expect(restaurant.total_products).to eq total
    end
  end
end

