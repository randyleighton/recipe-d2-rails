require 'rails_helper'

describe Tag do

  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name}
  it { should have_and_belong_to_many :recipes}


  it "should sort tags alphabetically" do
    tag1 = Tag.create({:name =>'A'})
    tag3 = Tag.create({:name =>'B'})
    tag2 = Tag.create({:name => 'C'})
  expect(Tag.all).to eq [tag1,tag3,tag2]
  end

end
