FactoryGirl.define do 
	factory :user do 
		name "ExampleName"
		email "sample@example.com"
		password "examplepassword"
		password_confirmation "examplepassword"
	end
end