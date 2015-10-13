require './lib/pairer'
require 'pp'

pairer = Pairer.new %w{Pablo Dan Andrew Tom Rob Jay Norm Yev}
pp pairer.run