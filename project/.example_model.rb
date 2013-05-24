require "maglev_record"

class MyModel
  include MaglevRecord::Base

  def name
    "my model"
  end
end

MyModel.maglev_record_persistable

puts "loaded app/my_model.rb"
