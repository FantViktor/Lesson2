=begin
1. Сделать хеш, содержащий месяцы и количество дней в месяце.
В цикле выводить те месяцы, у которых количество дней ровно 30
=end

Month = {
  "Январь" => { "количество дней" => "31" },
  "Февраль" => { "количество дней" => "28" },
  "март" => { "количество дней" => "31" },
  "Апрель" => { "количество дней" => "30" },
  "Май" => { "количество дней" => "31" },
  "Июнь" => { "количество дней" => "30" },
  "Июль" => { "количество дней" => "31" },
  "Август" => { "количество дней" => "31" },
  "Сентябрь" => { "количество дней" => "30" },
  "Октябрь" => { "количество дней" => "31" },
  "Ноябрь" => { "количество дней" => "30" },
  "Декабрь" => { "количество дней" => "31" }
}

puts Month.select { |key, hash| hash["количество дней"] == "30" }

