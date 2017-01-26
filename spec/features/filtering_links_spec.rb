
feature 'filtering links' do
  scenario 'only the filtered links appear' do
        visit('/links/new')
        fill_in :name, with: 'Ebay'
        fill_in :url, with: 'www.ebay.co.uk'
        fill_in :tag, with: 'shopping'
        click_button('Add Link')
        link = Link.first
        expect(link.tags.map(&:tag)).to include('shopping')
  end
end
