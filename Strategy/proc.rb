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
