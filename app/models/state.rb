class State < ActiveRecord::Base
  belongs_to :tickets

  def to_s
    name
  end
end
