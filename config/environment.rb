require 'bundler'
Bundler.require

# module Concerns
# end

require_all 'lib'

require_relative '../lib/concerns/concerns.rb'
require_relative '../lib/concerns/artist.rb'
require_relative '../lib/concerns/genre.rb'
require_relative '../lib/concerns/song.rb'
