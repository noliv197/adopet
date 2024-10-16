class SocialType < ApplicationRecord
    has_many :socials

    validates :name, presence: {message:  I18n.t('social_types.errors.no_name')}
    validates :icon, presence: {message:  I18n.t('social_types.errors.no_icon')}

    def error_messages
        errors.map { |error| error.options[:message] }
    end
end
