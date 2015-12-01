FactoryGirl.define do

  factory :event do
    name "Event"
    start_date DateTime.now
    end_date DateTime.now
  end

end
