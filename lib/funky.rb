# frozen_string_literal: true

require_relative 'funky/version'

module Funky
  # raise Funky::Error, 'Sample message'
  Error = Class.new(StandardError)

  # Your code goes here...
end

if ENV['KLUE_DEBUG']&.to_s&.downcase == 'true'
  namespace = 'Funky::Version'
  file_path = $LOADED_FEATURES.find { |f| f.include?('funky/version') }
  version   = Funky::VERSION.ljust(9)
  puts "#{namespace.ljust(35)} : #{version.ljust(9)} : #{file_path}"
end
