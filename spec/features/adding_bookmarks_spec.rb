feature 'Add Bookmarks' do
  scenario 'user able to add new bookmarks to bookmark manager' do
    visit('/bookmarks/new')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Add!')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
