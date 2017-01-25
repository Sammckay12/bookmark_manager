feature 'filtering links' do
  scenario 'only the filtered links appear' do
    create_link_with_tag
    create_link_with_diff_tag
    visit('/links/bubbles')
    expect(page).not_to have_content('Ebay')
    expect(page).to have_content('Water')
  end
end
