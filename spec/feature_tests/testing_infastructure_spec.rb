feature 'Testing infrastructure' do
  before do
    visit '/login'
  end

  scenario 'Can run app and check page content' do
    expect(page).to have_content 'Enter name'
  end

  scenario 'Allows players to fill in their name' do
    expect(page).to have_field('name')
  end

  scenario 'Expect those names to show on screen after submitting' do
    fill_in 'name', with: 'TEST'
    click_button 'GO'
    expect(page).to have_content 'PLAYER: TEST'
  end

  scenario 'Should pick a character and display the choice on the next screen' do
    fill_in 'name', with: 'TEST'
    click_button 'GO'
    choose("char", option: "templeknight")
    click_button 'GO'
    expect(page).to have_content 'player: TEST' and have_content 'character: TEMPLE KNIGHT'
  end

end
