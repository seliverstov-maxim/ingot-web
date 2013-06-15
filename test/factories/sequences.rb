FactoryGirl.define do
  sequence :name do |n|
    "name_#{n}"
  end

  sequence :description do |n|
    "description_#{n}"
  end

  sequence :user_agent do |n|
    "Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:16.0) Gecko/20120815 Firefox/16.0"
  end

  sequence :tags do |n|
    "tags_#{n}"
  end

  sequence :ip do |n|
    "127.0.0.1"
  end
end