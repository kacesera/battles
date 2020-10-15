feature 'Name Entry Form' do
  scenario 'Can displays name after names are enter' do
    visit('/')
    fill_in('player_1', with: "John")
    fill_in('player_2', with: "Dave")
    click_button('submit')
    expect(page).to have_content 'Hey, John & Dave! Ready for WAR?'
  end
end