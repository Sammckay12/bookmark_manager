require 'sinatra/base'
require_relative 'models/link'


class BookmarkApp < Sinatra::Base

  get '/links' do
    @links = Link.all
    p @links[0].url
    erb :links
  end

  run! if app_file == $0

end
