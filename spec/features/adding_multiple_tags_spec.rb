feature 'multiple tags' do
  scenario 'adding multiple tags to a link' do
    create_link_with_multi_tag
    visit('/links')
    link = Link.first
    expect(link.tags.map(&:tag)).to include('shopping')
    expect(link.tags.map(&:tag)).to include('auction')
  end
end
