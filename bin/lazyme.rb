require 'rubygems'

$LOAD_PATH.unshift(File.dirname(__FILE__) + '/../lib') unless $LOAD_PATH.include?(File.dirname(__FILE__) + '/../lib')

require 'lazyme'

Lazyme::Main.call
