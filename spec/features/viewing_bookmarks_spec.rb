feature 'Viewing Bookmarks' do
  scenario 'Showing List of Boomarks' do
    visit('/')
    click_link("View Bookmarks")
    expect(page).to have_content "View Bookmarks"
  end
end
