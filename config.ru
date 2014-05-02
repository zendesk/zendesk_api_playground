require 'rack/ssl-enforcer'
require 'zendesk_api'
require_relative 'base'

use Rack::SslEnforcer if ZendeskAPI::Server::App.production?
run ZendeskAPI::Server::App
