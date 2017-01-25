ENV['RACK_ENV'] ||= 'development'
require 'sinatra/base'
require_relative 'data_mapper_setup'

class BookmarkApp < Sinatra::Base

  get '/' do
    redirect '/links'
  end

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :'links/new'
  end

  post '/links' do
    link = Link.create(:name => params[:name], :url => params[:url])
    tag = Tag.first_or_create(:tag => params[:tag])
    link.tags << tag
    link.save
    redirect '/links'
  end

  get '/links/:name' do
    tag = Tag.first(tag: params[:name])
    @links = tag ? tag.links : []
    erb :'links/index'
  end

end
