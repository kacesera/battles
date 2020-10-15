feature 'Hit Points' do
  scenario "Player 2's hit points are displayed" do
    visit('/')
    fill_in('player_1_name', with: "John")
    fill_in('player_2_name', with: "Dave")
    click_button('submit')
    expect(page).to have_content 'Player 2: 100 HP'
  end
end