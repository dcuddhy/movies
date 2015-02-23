require 'rails_helper'
require 'capybara/rails'

feature 'Movie - ' do

  scenario 'Users can add a movie' do

    visit root_path
    click_on "Add a Movie"

    fill_in "Title", with: "Drew's Favorite Movie"
    fill_in "Rating", with: "9.5"
    click_on "Create Movie"

    expect(page).to have_content("Drew's Favorite Movie")
  end

  scenario 'Users can edit a movie' do

    visit root_path
    click_on "Add a Movie"

    fill_in "Title", with: "Drew's Favorite Movie"
    fill_in "Rating", with: "9.5"
    click_on "Create Movie"

    expect(page).to have_content("Drew's Favorite Movie")

    click_on "Edit"
    fill_in "Rating", with: "10"
    click_on "Update Movie"

    expect(page).to have_content("Drew's Favorite Movie 10")

  end

  scenario 'Users can add a movie' do

    visit root_path
    click_on "Add a Movie"

    fill_in "Title", with: "Drew's Favorite Movie"
    fill_in "Rating", with: "9.5"
    click_on "Create Movie"

    expect(page).to have_content("Drew's Favorite Movie")

    click_on "Delete"

    expect(page).to have_no_content("Drew's Favorite Movie")
  end

end
