FactoryGirl.define do 
	factory :user do 
		name "ExampleName"
		email "example@email.com"
		password "examplepassword"
		password_confirmation "examplepassword"
	end
end