feature "the homepage", type: :feature do

  scenario "display a form for players to fill thier names in" do
    visit '/'
    expect(page).to have_field("player_one")
    expect(page).to have_field("player_two")
    expect(page).to have_selector("input[type=submit][value='Submit']")
  end
end

  feature 'Enter names' do
    scenario "Display player names" do
    sign_in_and_play
    expect(page).to have_content "Charlotte vs. Eddie"
  end
end








feature "play game", type: :feature do 
  scenario "display battle option buttons" do
  visit '/play'
  expect(page).to have_selector(:link_or_button, "Attack!")
  expect(page).to have_selector(:link_or_button, "Paralyse")
  expect(page).to have_selector(:link_or_button, "Sleep, zzz")
  expect(page).to have_selector(:link_or_button, "Poison @_@") 
  expect(page).to have_selector(:link_or_button, "Heal") 
  end
end