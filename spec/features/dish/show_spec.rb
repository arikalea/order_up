require 'rails_helper'

RSpec.describe 'Dish show page', type: :feature do
  before :each do
    @chef = Chef.create!(name: "Billy bob")
    @dish_1 = @chef.dishes.create!(name: "Salad", description: "Super healthy")
    @ingredient_1 = @dish_1.ingredients.create!(name: "Spinach", calories: 25)
    @ingredient_2 = @dish_1.ingredients.create!(name: "Feta cheese", calories: 50)
    @ingredient_3 = @dish_1.ingredients.create!(name: "Tomatoes", calories: 15)
  end

  describe 'As a visitor' do
    it 'Displays dishes name and description' do
      visit "/dishes/#{@dish_1.id}"

      expect(page).to have_content(@dish_1.name)
      expect(page).to have_content(@dish_1.description)
    end


  end
end
