class FindName < ApplicationRecord

  # Name types
  module Type
    FIRST_NAME  = 1
    MIDDLE_NAME = 2
    LAST_NAME   = 3
  end

  def get_name_type
  end

end
