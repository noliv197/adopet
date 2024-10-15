require 'rails_helper'

RSpec.describe Social, type: :model do
  describe '#valid?' do
    it 'when type is null' do
      social_type = FactoryBot.create(:social_type)
      social = Social.new(user: '')
      
      result = social.valid?

      expect(result).to eq false
      expect(social.errors.full_messages).to include I18n.t('socials.errors.no_type')
    end
  end
end
