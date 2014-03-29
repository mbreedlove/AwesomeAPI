#!/usr/bin/env ruby

require 'digest/md5'
require 'digest/sha1'
require 'digest/sha2'

get '/md5/:data' do |d|
  hash = Digest::MD5.new << d
  hash.to_s
end

get '/sha1/:data' do |d|
  hash = Digest::SHA1.new << d
  hash.to_s
end

get '/sha256/:data' do |d|
  hash = Digest::SHA256.new << d
  hash.to_s
end

get '/sha512/:data' do |d|
  hash = Digest::SHA512.new << d
  hash.to_s
end
__END__

@@ logger_read
- @@logger.each do |e|
  %p= e
