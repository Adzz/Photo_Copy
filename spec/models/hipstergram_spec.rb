require 'rails_helper'

RSpec.describe Hipstergram, type: :model do

  it { should have_attached_file(:image) }
  it { should validate_attachment_presence(:image) }
  


end