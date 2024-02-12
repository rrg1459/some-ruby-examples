require "benchmark"
require 'yaml'
require 'json'

class A
  def initialize(string, number)
    @string = string
    @number = number
  end

  def to_s
    "In A:\n   #{@string}, #{@number}\n"
  endf
end

def benchmark_serialize(output_file)
  Benchmark.realtime do
    File.open(output_file, "w") do |file|
      # (1..500000).each do |index|
      (1..50).each do |index|
        yield(file, A.new("hello world", index))
      end
    end
  end
end

a = A.new("hello world", 5)
puts a
serialized_object = Marshal::dump(a)
puts Marshal::load(serialized_object)

puts "YAML:"
time = benchmark_serialize("/home/elorat/tmp2/yaml.dat") do |file, object|
  file.puts YAML::dump(object)
  file.puts ""
end
puts "Time: #{time} sec"

puts "JSON:"
time = benchmark_serialize("/home/elorat/tmp2/json.dat") do |file, object|
  file.puts object.to_json
end
puts "Time: #{time} sec"

puts "Marshal:"
time = benchmark_serialize("/home/elorat/tmp2/marshal.dat") do |file, object|
  file.print Marshal::dump(object)
  file.print "---_---"
end
puts "Time: #{time} sec"