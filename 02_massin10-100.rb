=begin
2. Заполнить массив числами от 10 до 100 с шагом 5
puts Array.new (21) { |i| i * 5 }
=end

array = []
i = 10

while i <= 100
  array << i
  i += 5
end
puts array



