FactoryBot.define do
  factory :recipe_ingredient do
    recipe { nil }
    ingredient { nil }
    quantity { 1 }
    quantity_unit_of_measure { "MyString" }
    servings { 1 }
  end
end
