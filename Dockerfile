FROM siliconaxon/ruby:2.4.3-vendor
MAINTAINER Albert Tedja, albert@siliconaxon.com

EXPOSE 9000

CMD bundle exec puma -C puma.rb
