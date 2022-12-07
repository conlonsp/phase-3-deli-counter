# Write your code here.
katz_deli = []

def line(katz_deli)
  if katz_deli == []
    puts "The line is currently empty."
  else
    deli_line = []
    x = 1
    katz_deli.each do |e|
      customer = "#{x}. #{e}"
      deli_line << customer
      x += 1
    end
    puts "The line is currently: #{deli_line.join(' ')}"
  end
end

def take_a_number(katz_deli, name)
  katz_deli << name
  puts "Welcome, #{name}. You are number #{katz_deli.find_index(name) + 1} in line."
end

def now_serving(katz_deli)
  if katz_deli == []
    puts "There is nobody waiting to be served!"
  else
    serving = katz_deli.shift
    puts "Currently serving #{serving}."
  end
end