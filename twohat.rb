require 'httparty'
require 'json'
require "byebug"
# require "base64"

# https://www.twohat.com/
# Content moderation solution

class Sift
  # class API
    include HTTParty

    def initialize(u, p)
      @auth = {:username => u, :password => p}
    end

    def get(path)
      options = {
        :basic_auth => @auth,
        :headers => { 'Content-Type' => 'application/json' }
      }
      self.class.get(path, options)
    end

    def post(path, data)
      options = {
        :body => data,
        :basic_auth => @auth,
        :headers => { 'Content-Type' => 'application/json' }
      }
      self.class.post(path, options)
    end
  # end
end

# byebug

elorat = 'kramelorat'
encode = 'Vo3by9duFTznfaZ14OGC'


# Usage
# sift = Sift::API.new('', encode)
sift = Sift.new('', encode)
# sift = Sift::API.new('', 'a3JhbWVsb3JhdA==\n')

data = {
    "user_id": "0000003",
    "user_display_name": "rafael2",
    "language": "en",
    "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
}.to_json

mensaje = sift.post('https://famvc2vu.pottymouthfilter.com/v1/chat/pre', data) 

# byebug

puts mensaje
# data = {
#     "user_id": "9",
#     "user_display_name": "rafael3",
#     "language": "en",
#     "text": "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat."
# }.to_json

# puts sift.post('https://famvc2vu.pottymouthfilter.com/v1/workflow/call/fp_check_username', data)

