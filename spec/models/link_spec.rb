require 'rails_helper'

  describe Link do
    it { should validate_presence_of :username }
    it { should validate_presence_of :description}
    it { should validate_presence_of :url}
    it { should have_many :comments }
  end
