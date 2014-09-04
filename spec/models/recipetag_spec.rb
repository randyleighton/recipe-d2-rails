require 'rails_helper'

describe Recipetag do

  it { should belong_to :recipe }
  it { should belong_to :tag  }


end
