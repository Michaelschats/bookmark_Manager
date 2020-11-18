require 'pg'

feature 'Viewing Bookmarks' do
  scenario 'Showing List of Boomarks' do
    Bookmark.create(url: "http://www.google.com")
    Bookmark.create(url: "http://www.facebook.com")

    visit('/bookmarks')
    expect(page).to have_content "Bookmarks"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end
