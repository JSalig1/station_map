require 'rails_helper'

feature "user creates an event" do
  scenario "successfully" do
    station = create(:station)
    visit stations_path

    click_link("Add Event")

    fill_in "Name", with: "My Event"
    fill_in "Start Date", with: Date.today
    fill_in "End Date", with: Date.tomorrow
    click_on "Create Event"

    expect(page).to have_content("My Event")
  end
end
