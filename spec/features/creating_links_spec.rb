feature 'creating links'do
  scenario 'when user adds new link' do
    visit('/links/new')
    fill_in :name, with: 'Ebay'
    fill_in :url, with: 'www.ebay.co.uk'
    click_button('Add Link')
    expect(current_path).to eq '/links'
    within 'ul#links' do
      expect(page).to have_content('Ebay')
      expect(page).to have_content('www.ebay.co.uk')
    end
  end
end
