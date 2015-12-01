require 'rails_helper'

feature "visitor visits the stations index" do
  scenario "where they can see all the stations listed" do
    create(:station, name: "A Station")
    create(:station, name: "Another Station")

    visit stations_path

    expect(page).to have_content("A Station")
    expect(page).to have_content("Another Station")
  end

  scenario "where they can see events for each station" do
    station = create(:station)
    event = create(:event, name: "My Event")
    station.events << event

    visit stations_path

    expect(page).to have_content("My Event")
  end
end

