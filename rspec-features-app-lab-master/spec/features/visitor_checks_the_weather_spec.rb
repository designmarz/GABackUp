require 'rails_helper'

feature 'Visitor checks the weather' do
  scenario 'sunny' do
  #setup
    #go to root path of webApp
    visit root_path
  #exercise
    #fill in zipcode
    fill_in "What's your zipcode?", with: '95035'
    #click on submit button
    click_button 'Is it gonna rain?'
  # verify
    expect(page).to have_content("Sun is shining the weather is sweet, yeah")
    expect(page).to have_content("No umbrella needed.")
  end

scenario 'rain' do
  #setup
    #go to root path of webApp
    visit root_path
  #exercise
    #fill in zipcode
    fill_in "What's your zipcode?", with: '98101'
    #click on submit button
    click_button 'Is it gonna rain?'
  # verify
    expect(page).to have_content("Do you even Rain Bro?")
    expect(page).to have_content("Umbrella needed!")
  end



end

