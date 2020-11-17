feature 'Viewing Bookmarks' do
  scenario 'Showing List of Boomarks' do
    visit('/')
    click_link("View Bookmarks")
    expect(page).to have_content "Bookmarks"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end
