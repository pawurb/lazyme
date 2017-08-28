require 'lazyme/version'
require 'pp'

module Lazyme
  class Main
    def call
      file = File.open(history_file_path)
      data = file.read.force_encoding('BINARY').

      encode("UTF-8", invalid: :replace, undef: :replace).
      split("\n").map do |line|
        line.split(';').last
      end

      count = Hash.new(0)

      data.each do |item|
        if item
          count[item] = count[item] + 1
        end
      end

      pp Hash[count.sort_by {|_, v| v }]
    end

    def history_file_path
      if File.exist?(File.expand_path('~/.zsh_history'))
        File.expand_path('~/.zsh_history')
      elsif File.exist?(File.expand_path('~/.bash_history'))
        File.expand_path('~/.bash_history')
      else
        raise "Missing both zsh and bash history files"
      end
    end
  end
end
