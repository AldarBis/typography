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
PasswordGem::password_quant(6, 1..12) #=> "uvumux"
                                           "gabofi"
                                           "gam"
                                           "epang"
                                           "j"
                                           "ikumigogan"
PasswordGem::password_quant(6, 12) #=> "henatayetepe"
                                       "ogiquachawre"
                                       "nekucevatobi"
                                       "pegiyunopose"
                                       "loxegalehula"
                                       "rewigejeqife"
PasswordGem::password_fixed(4) #=> "viyo"
PasswordGem::password_interval(3..10) #=> "raqasiqibu"
