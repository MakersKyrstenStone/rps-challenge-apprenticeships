require 'capybara'

feature 'test page' do
  scenario 'visit test page' do
    visit '/test'
    expect(page).to have_content('test page')
  end

  feature 'startpage' do
    scenario 'show the home page with welcome' do
      visit '/'
      expect(page).to have_content('Welcome')
    end
  end

  feature 'name_of_player' do
    scenario 'get the player name' do
      visit('/player_name')
      fill_in :pname, with: 'Superstar'
      click_button "Use this name > "
      save_and_open_page

      expect(page).to have_content 'Superstar'
    end
  end

end
