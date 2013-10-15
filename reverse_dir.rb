#!/usr/bin/ruby -w
#
# oct 2013
# creating reverse named dirs from actual listing
#

#verzeichnis = %w[ one two three ]

verzeichnis = [ Dir.glob('*').select {|f| File.directory? f} ]
#puts verzeichnis
puts "------"
#verzeichnis.reverse.each {|x| print x }
#puts "----------------"
#verzeichnis.each {|x| print x.reverse, " " }
#verzeichnis.collect {|x| print x.reverse, " " }
puts "now only one:"
#array=[verzeichnis.collect]
#puts array[1]
puts "*************"
verzeichniss = [ verzeichnis.join(" ")]
str = ""
verzeichniss.reverse_each { |word| str += "#{word.reverse} " }
puts str 
