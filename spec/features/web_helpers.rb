def create_link_with_tag
  visit('/links/new')
  fill_in :name, with: 'Ebay'
  fill_in :url, with: 'www.ebay.co.uk'
  fill_in :tag, with: 'shopping'
  click_button('Add Link')
end

def create_link_with_diff_tag
  visit('/links/new')
  fill_in :name, with: 'Water'
  fill_in :url, with: 'www.water.co.uk'
  fill_in :tag, with: 'bubbles'
  click_button('Add Link')
end

def create_link_with_multi_tag
  visit('/links/new')
  fill_in :name, with: 'Ebay'
  fill_in :url, with: 'www.ebay.co.uk'
  fill_in :tag, with: 'shopping, auction, buying'
  click_button('Add Link')
end
