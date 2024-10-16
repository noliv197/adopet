require 'rails_helper'

RSpec.describe SocialType, type: :model do
  describe '#valid?' do
  it 'when name is null' do
    social_types = SocialType.new(icon: 'test')
    
    result = social_types.valid?

    expect(result).to eq false
    expect(social_types.error_messages).to include I18n.t('social_types.errors.no_name')
  end
  it 'when icon is null' do
    social_types = SocialType.new(name: 'test')
    
    result = social_types.valid?

    expect(result).to eq false
    expect(social_types.error_messages).to include I18n.t('social_types.errors.no_icon')
  end
  it 'when all required params are declared' do
    social_type = SocialType.new(name: 'test', icon:'test')
    
    result = social_type.valid?

    expect(result).to eq true
    expect(social_type.error_messages).to be_empty
  end
end
end
