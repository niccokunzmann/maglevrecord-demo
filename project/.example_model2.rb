require "maglev_record"

class MyModel2
  include MaglevRecord::Base

  def name
    "my model 2"
  end
end

MyModel2.maglev_record_persistable

puts "loaded app/my_model2.rb"
