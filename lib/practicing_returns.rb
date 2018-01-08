require 'pry'
array = ["Tim", "Tom", "Jim"]
def hello(array)
  i = 0
  while i < array.length
    puts "in while"
    yield(array[i])
    i += 1
    puts "i+1"
  end
end


hello(["Tim", "Tom", "Jim"]) { |name| puts "Hi, #{name}" }
hello(array) { |name| puts "Hi, #{name}" }
