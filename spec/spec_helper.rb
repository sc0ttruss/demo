require 'chefspec'
require 'chefspec/berkshelf'

RSpec.configure do |c|
  c.tty = true
  c.color = true
  c.failure_color = :cyan
  c.formatter = :documentation
end
