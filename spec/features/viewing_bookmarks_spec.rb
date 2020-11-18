require 'pg'

feature 'Viewing Bookmarks' do
  scenario 'Showing List of Boomarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    connection.exec("INSERT INTO bookmarks VALUES (1, 'http://www.google.com');")
    connection.exec("INSERT INTO bookmarks VALUES (2, 'http://www.facebook.com');")

    visit('/bookmarks')
    expect(page).to have_content "Bookmarks"
    expect(page).to have_content "http://www.google.com"
    expect(page).to have_content "http://www.facebook.com"
  end
end
