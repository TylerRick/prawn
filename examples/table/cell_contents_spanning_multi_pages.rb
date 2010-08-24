# encoding: utf-8
#
require "#{File.dirname(__FILE__)}/../example_helper.rb"

Prawn::Document.generate(filename = File.basename(__FILE__) + ".pdf") do
  line_count = 80
  table([
    ["Shorter cell", "Column 2"],
    [(0...line_count).map{|i| "This is line #{i} of #{line_count}\n"}.join, "Column 2"],
    ["Shorter cell", "Column 2"],
  ])
end

system "evince #{filename}"
