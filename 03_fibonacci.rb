=begin
Заполнить массив числами фибоначчи до 100
=end

array = [0, 1]
while array[-1] + array[-2] < 1000
  array << array[-1] + array [-2]
end
puts array
