require 'lazyme/version'

module Lazyme
  class Main
    def call
      file = File.open(File.expand_path('~/.zsh_history'))
      data = file.read.force_encoding('BINARY').
      encode("UTF-8", invalid: :replace, undef: :replace).
      split("\n").map do |line|
        line.split(';').last
      end

      count = Hash.new(0)

      data.each do |item|
        count[item] = count[item] + 1
      end

      puts Hash[count.sort_by {|_, v| v }]
    end
  end
end
