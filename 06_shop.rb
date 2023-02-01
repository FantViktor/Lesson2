=begin
Сумма покупок. Пользователь вводит поочередно название товара,
 цену за единицу и кол-во купленного товара (может быть нецелым числом).
 Пользователь может ввести произвольное кол-во товаров до тех пор,
 пока не введет "стоп" в качестве названия товара. На основе введенных данных требуетеся:
Заполнить и вывести на экран хеш, ключами которого являются названия товаров,
 а значением - вложенный хеш, содержащий цену за единицу товара и кол-во купленного товара.
 Также вывести итоговую сумму за каждый товар.
Вычислить и вывести на экран итоговую сумму всех покупок в "корзине".
=end

products = Hash.new

loop do
  print "введите  наименование товара: "
  product = gets.chomp

  break if product == "стоп"

  print "введите цену товара: "
  price = gets.chomp.to_f
  print "введите количество: "
  count = gets.chomp.to_f

  products[product] = { price: price, count: count }
end

def show(products)
  puts "Список покупок"
  products.each do |key, value|
    price = value[:price]
    count = value[:count]
    total = price * count
    puts "товар: #{key}\tцена: #{price}\tкол-во: #{count}\tсумма: #{total}"
  end
end

def calculate(products)
  total = 0
  products.each do |key, value|
    total += value[:price] * value[:count]
  end

  return total

end

show(products)
puts "Общая стоимость: #{calculate(products)}"


