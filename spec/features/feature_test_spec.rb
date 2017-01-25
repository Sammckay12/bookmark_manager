require 'spec_helper'

feature "shows a list of links" do
  scenario "when I visit the website" do
    Link.create(:name => "Google", :url  => "www.google.co.uk")
    visit ('/links')
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content('Google')
    end
  end

end
