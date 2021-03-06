FactoryGirl.define do
	sequence(:email) { |n| "user#{n}@example.com" }

	factory :user do
		email
		password "password"
		first_name "samah"
		last_name "zAD"
		admin false
	end

	factory :admin, parent: :user do
		id
		admin true
	end
end