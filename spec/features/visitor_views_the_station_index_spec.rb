require 'rails_helper'

feature "visitor visits the stations index" do
  scenario "where they can see all the stations listed" do
    create(:station, name: "A Station")
    create(:station, name: "Another Station")

    visit stations_path

    expect(page).to have_content("A Station")
    expect(page).to have_content("Another Station")
  end
end

