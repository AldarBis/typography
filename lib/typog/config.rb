 module Typog
   class Conf
     attr_accessor :mdash_uri
     
     def initialize
       @mdash_uri = 'http://mdash.ru/api.v1.php'
     end
   end
 end