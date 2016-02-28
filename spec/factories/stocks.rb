FactoryGirl.define do
  factory :stock do
    intitial_quantity 1.5
    current_quantity 1.5
    status "MyString"
    purchase_manufacture_date "2016-02-28"
    expiration_date "2016-02-28"
    price_per_unit 1.5
    supplier "MyString"
    identifier "MyString"
    stocktype nil
  end
end
