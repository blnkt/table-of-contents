require 'rails_helper'

describe Chapter do
  it { should have_many :sections }
end
