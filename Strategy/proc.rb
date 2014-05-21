def run_it
  puts 'Before the yield'
  yield
  puts 'After the yield'
end

run_it { puts 'Hello' }

is_proc = Proc.new{puts 'test call it.'}

puts '>>>>>>>>>>>>>>>>>>>>>>>Other one>>>>>>>>>>>>>>>>>>>>>>>>'

is_proc.call

run_it {is_proc.call}
puts '>>>>>>>>>>>>>>>>>>>>>>>take arg into proc>>>>>>>>>>>>>>>>>>>>>>>>'

def run_it_with_parameter
  puts 'Before the yield'
  yield(24)
  puts 'After the yield'
end

run_it_with_parameter do |x|
  puts 'Hello from inside the proc'
  puts "The value of x is #{x}"
end
def run_it_with_parameter_copy(&block)
  puts 'Before the yield'
  block.call(24)
  puts 'After the yield'
end

run_it_with_parameter_copy {|x| puts "It's #{x}"}
my_proc = lambda {|x| puts "The value is #{x}" }

run_it_with_parameter(&my_proc)
