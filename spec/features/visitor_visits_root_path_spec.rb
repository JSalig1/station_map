require 'rails_helper'

feature "visitor visits root path" do
  scenario "sucessfully" do
    visit root_path

    expect(page).to have_content("Station Map")
  end
end
