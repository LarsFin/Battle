feature 'Testing infrastructure' do

  scenario 'Can run app and check page content' do
    visit_log
    expect(page).to have_content 'Enter name'
  end

  scenario 'Allows players to fill in their name' do
    visit_log
    expect(page).to have_field('name')
  end

  scenario 'Expect those names to show on screen after submitting' do
    visit_log
    fill_in 'name', with: 'TEST'
    click_button 'GO'
    expect(page).to have_content 'PLAYER: TEST'
  end

  feature 'Signed in' do

    before do
      sign_in_and_play
    end

    scenario 'Should pick a character and display the choice on the next screen' do
      choose_temple_knight
      expect(page).to have_content 'player: TEST health: 1000' and have_content 'character: TEMPLE KNIGHT'
    end

    scenario 'Should attack monster and deduct a health' do
      choose_temple_knight
      player_attacks
      expect(page).to have_content 'TEST charges at monster!'
    end

    scenario 'Should deduct health from monster' do
      choose_temple_knight
      player_attacks
      expect(page).to have_content 'monster: ASYLUM DEMON health: 1800'
    end

    scenario 'Should be able to slay monster' do
      choose_temple_knight
      10.times { player_attacks }
      expect(page).to have_content 'MONSTER DEFEATED!'
    end

  end

end
