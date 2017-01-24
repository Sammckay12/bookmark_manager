require 'sinatra/base'
require_relative 'models/link'


class BookmarkApp < Sinatra::Base

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    Link.create(:name => params[:name], :url => params[:url])
    redirect '/links'
  end

  run! if app_file == $0

end
