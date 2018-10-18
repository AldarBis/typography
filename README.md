# password
Create security strong and easy to read password
## Install:
Install following gems:
```
install gem password_gem
```
Add it to your Gemfile:
```
gem "password_gem"
```

## Usage:
 You may generate password with numerous symbols. Also you have abbility to create as many passwords as you need at once.
 ``` ruby
p = Password.new
p.generate(5) => "gupuv"
p.generate(2..10) => "abo"
p.generate(3, 5) => [ "elaxo", "taken", "elevi"]
p.generate(3, 2..10) => [ "anehingu", "jupiceri", "tuqusafe"]
p.generate(2.4, 2..10) => "Неверный тип данных! Количество паролей не может быть Float"
p.generate("foo") => "Неверный тип данных! Длина пароля не может быть String"
