FactoryGirl.define do
  factory :message do
    sender ""
receiver ""
body "MyText"
unread false
  end

end
