FactoryBot.define do
  factory :animal do
    name { "MyString" }
    age { 1 }
    age_unit { 1 }
    animal_type { nil }
    status { 1 }
    about { "MyString" }
    vaccines { nil }
    medication { "MyString" }
  end
end
