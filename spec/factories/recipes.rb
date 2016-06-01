FactoryGirl.define do
  factory :recipe do
    name "MyString"
    cuisine "MyString"
    food_type "MyString"
    preference "MyString"
    portions 1
    cook_time 1
    difficulty "MyString"
    ingredients "MyText"
    instructions "MyText"
  end
end
