FactoryGirl.define do 
	factory :user do 
		name "ExampleName"
		email "sample@example.com"
		password "examplepassword"
		password_confirmation "examplepassword"

	  factory :admin_user do 
	  	admin true
	  end
	end
end