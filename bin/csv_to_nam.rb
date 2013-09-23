#!/usr/bin/ruby
require_relative '../lib/CSVToNam'

POOL_LANES = 8
options = {}

option_parser = OptionParser.new do |opts|
  exe_name = File.basename($PROGRAM_NAME)
  opts.banner = "Usage: #{exe_name} [options] csv_file_name"

  opts.on('-n', '--without-nam', 'No video board files will be generated.') do
    options[:nam] = false
  end

  opts.on('-a', '--without-ares', 'No Ares21 files will be generated.') do
    options[:ares] = false
  end

  opts.on('-t', '--team', 'Process a CSV file for a Team competition.') do
    options[:team] = true
  end

  opts.on('-f', '--finals', 'Process a CSV file for an individual final.') do
    options[:finals] = true
  end
end

begin
  option_parser.parse!
  if ARGV.empty?
    puts 'Error: no CSV file name supplied'
    puts
    puts option_parser.help
    exit 1
  else
    filename = ARGV.last
    puts "You requested processing for CSV file: #{filename}"
  end
rescue OptionParser::InvalidArgument => ex
  STDERR.puts ex:message
  STDERR.puts option_parser
end