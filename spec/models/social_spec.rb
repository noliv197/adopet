require 'rails_helper'

RSpec.describe Social, type: :model do
  describe '#valid?' do
    it 'when type is null' do
      social = Social.new(user: '@')
      
      result = social.valid?

      expect(result).to eq false
      expect(social.error_messages).to include I18n.t('socials.errors.no_type')
    end
    it 'when user is null' do
      social_type = FactoryBot.create(:social_type)
      social = Social.new(social_type: social_type)
      
      result = social.valid?

      expect(result).to eq false
      expect(social.error_messages).to include I18n.t('socials.errors.no_user')
    end
    it 'when all required params are declared' do
      social_type = FactoryBot.create(:social_type)
      social = Social.new(user: '@', social_type: social_type)
      
      result = social.valid?

      expect(result).to eq true
      expect(social.error_messages).to be_empty
    end
  end
end
