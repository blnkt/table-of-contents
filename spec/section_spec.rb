require 'rails_helper'

describe Section do
  it { should belong_to :chapter }
  it { should have_many :lessons}
end
