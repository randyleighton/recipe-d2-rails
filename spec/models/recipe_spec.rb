require 'rails_helper'

describe Recipe do

  it { should validate_presence_of :name }
  it { should validate_presence_of :description }
  it { should validate_uniqueness_of :name }
  it { should have_many :tags }
  it { should have_many(:ingredients).through(:tags)}

  it "should sort recipes by ascending order" do
    recipe1 = Recipe.create({name: "Fried Rat Burritos",
      description: "Insert fried rat parts into a tortilla, add cheese."})
    recipe2 = Recipe.create({name: "Cheesy Gerbil Sandwiches",
      description: "Make furry bread with skin, insert seared flesh and goat cheese for creamy flavor"})
    recipe3 = Recipe.create(name: "Picked Vermin Pasta", description: "Pickle your vermin of choice, boil pasta, make creamy sauce" )
  expect(Recipe.all).to eq [recipe2,recipe1,recipe3]
  end

end
