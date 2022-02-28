require 'date'

puts "Seeding doggos 🐶"

fbirthday = Date.new(2021, 11, 1)
jbirthday = Date.new(2005, 4, 18)
wbirthday = Date.new(2020, 12, 18)

Dog.create(name: "Friday", avatar: "https://raw.githubusercontent.com/eztree/Sandbox/master/app/assets/images/friday.jpg", birthday: fbirthday)
Dog.create(name: "Jix", avatar: "https://raw.githubusercontent.com/eztree/Sandbox/master/app/assets/images/friday.jpg", birthday: jbirthday)
Dog.create(name: "Weasley", avatar: "https://raw.githubusercontent.com/eztree/Sandbox/master/app/assets/images/friday.jpg", birthday: wbirthday)

