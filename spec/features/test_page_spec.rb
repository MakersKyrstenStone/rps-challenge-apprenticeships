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
end
