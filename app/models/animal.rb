class Animal < ApplicationRecord
  belongs_to :animal_type
  belongs_to :vaccines
end
