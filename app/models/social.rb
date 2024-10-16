class Social < ApplicationRecord
  belongs_to :social_type

  validates :user, presence: {message:  I18n.t('socials.errors.no_user')}
  validates :social_type_id, presence: {message:  I18n.t('socials.errors.no_type')}

  def error_messages
    errors.map { |error| error.options[:message] }
  end
end
