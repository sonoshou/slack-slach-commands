require 'bundler'
require 'sinatra/base'
require 'sinatra/reloader'
require './helper'
require './my_account'
require 'sinatra/json'
require 'logger'

Bundler.require

class MyApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    @title = "slack api"
    haml :index
  end

  get '/.well-known/acme-challenge/:id' do
    params[:id]+MyAccount::ACME_CHALLENGE_TOKEN
  end

  post '/telephone' do
    if Helper::check_token(params[:token])
#     logger = Logger.new('log/sinatra.log')
      str = { "response_type" => "in_channel",
              "text" => params[:text]}
      json str
    end
  end
end

