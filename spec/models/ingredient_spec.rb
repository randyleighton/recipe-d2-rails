require 'rails_helper'

describe Ingredient do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name}
  it { should have_and_belong_to_many :recipes}
  it { should have_many :tags }
  it { should have_many(:recipes).through(:tags)}

  it "should sort tags alphabetically" do
    ingredient1 = Ingredient.create({:name =>'A'})
    ingredient3 = Ingredient.create({:name =>'B'})
    ingredient2 = Ingredient.create({:name => 'C'})
  expect(Ingredient.all).to eq [ingredient1,ingredient3,ingredient2]
  end

end
