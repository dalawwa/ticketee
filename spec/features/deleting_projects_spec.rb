require 'spec_helper'

feature "Deleting projects" do 
	scenario "Deleting a project" do
		FactoryGirl.create(:project, name: "Sublime Text 2")

		visit '/'
		click_link "Sublime Text 2"
		click_link "Delete Project"

		expect(page).to have_content("Project has been destroyed.")

		visit '/'

		expect(page).to have_no_content("Sublime Text 2")
	end
end
