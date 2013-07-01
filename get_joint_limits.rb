#! /usr/bin/env ruby

require "rubygems"
require "bundler/setup"
require 'nokogiri'

@doc = Nokogiri::XML(File.open(ARGV[0]))


puts "label, lower, upper, parent, x, y, z"
@doc.xpath("//joint/limit").each do |limit|
	puts "#{limit.parent["name"]}, #{limit[:lower]}, #{limit[:upper]}"
end