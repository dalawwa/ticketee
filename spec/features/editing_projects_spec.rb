require 'spec_helper'

feature "Editing Projects" do 
	before do 
	  sign_in_as!(FactoryGirl.create(:admin_user))
	  FactoryGirl.create(:project, name: "Sublime Text 2")

			visit '/'
			click_link "Sublime Text 2"
			click_link "Edit Project"
	end

	scenario "Updating a project" do 
			
		fill_in "Name", with: "Sublime Text 2 pro"
		click_button "Update Project"

		expect(page).to have_content("Project has been updated.")
	end

	scenario "Updating a project with invalid attributes is bad" do 
		fill_in "Name", with: ""
		click_button "Update Project"

		expect(page).to have_content("Project has not been updated.")
	end
end