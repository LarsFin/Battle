feature 'Testing infrastructure' do

  scenario 'Can run app and check page content' do
    visit('/battle')
    expect(page).to have_content 'The battle test works!'
  end
end
