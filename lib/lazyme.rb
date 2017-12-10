require 'lazyme/version'
require 'terminal-table'
require 'pp'

module Lazyme
  class Main
    SIZE_LIMIT = 80
    COUNT_LIMIT = 2

    def self.call
      new.call
    end

    def call
      file = File.open(history_file_path)
      data = file.read.force_encoding('BINARY').

      encode("UTF-8", invalid: :replace, undef: :replace).
      split("\n").map do |line|
        line.split(';').last
      end

      count = Hash.new(0)

      data.each do |item|
        if trimmed = trim(item)
          count[trimmed] = count[trimmed] + 1
        end
      end

      rows = count.sort_by {|_, v| v }.select { |el| el[1] > COUNT_LIMIT }
      puts Terminal::Table.new rows: rows
    end

    private

    def trim(item)
      if item && item.length == SIZE_LIMIT
        item.slice(0, SIZE_LIMIT)
      elsif item && item.length > SIZE_LIMIT
        item.slice(0, SIZE_LIMIT) + "..."
      elsif item && item.length < SIZE_LIMIT
        item
      end
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
