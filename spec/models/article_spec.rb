require 'rails_helper'

RSpec.describe Article, type: :model do
  context 'validations' do
    before { FactoryGirl.build(:article, :normal_article) }
    it do
      should validate_presence_of(:name)
    end
  end
end
