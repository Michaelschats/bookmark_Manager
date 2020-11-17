require_relative './lib/bookmark.rb'
require 'sinatra/base'

class BookmarksManager < Sinatra::Base

  get '/' do
    erb(:index)
  end

  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb(:"bookmarks-list")
  end

  run! if app_file == $0

end
