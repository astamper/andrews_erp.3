FactoryGirl.define do
  factory :recipe do
    parent_product_id 1
    child_product_id 1
    quantity 1
    status "MyString"
  end
end
