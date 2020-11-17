require 'pg'

class Bookmark

  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    results = connection.exec('SELECT url FROM bookmarks;')
    results.map {|bookmark|bookmark['url']}
  end
end
