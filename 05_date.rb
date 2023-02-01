=begin
  5. Заданы три числа, которые обозначают число, месяц, год (запрашиваем у пользователя).
  Найти порядковый номер даты, начиная отсчет с начала года. Учесть, что год может быть високосным.
  (Запрещено использовать встроенные в ruby методы для этого вроде Date#yday или Date#leap?)
=end

days_of_month = {
  1 => 31,
  2 => 28,
  3 => 31,
  4 => 30,
  5 => 31,
  6 => 30,
  7 => 31,
  8 => 31,
  9 => 30,
  10 => 31,
  11 => 30,
  12 => 31,
}

print "введите число: "
day = gets.chomp.to_i
print "введите месяц: "
month = gets.chomp.to_i
print "введите год: "
year = gets.chomp.to_i

result = 0


is_leap = (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)


(1...month).each { |m| result += days_of_month[m] }


result += day

result += 1 if is_leap && month > 2

puts result























