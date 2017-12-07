def visit_log
  visit '/login'
end

def sign_in_and_play
  visit_log
  fill_in 'name', with: 'TEST'
  click_button 'GO'
end

def choose_temple_knight
  choose("char", option: "templeknight")
  click_button 'GO'
end

def player_attacks
  click_button 'CHARGE!'
end
