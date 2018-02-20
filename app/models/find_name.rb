class FindName < ApplicationRecord

  scope :name_type_filter, ->(type) { where('name_type = ?', type) }
  scope :partialmatch_column, ->(column, e) {
    where(sanitize_sql_array(["`#{column}` like ? escape '!'", "%#{e.gsub(/[!%_]/) { |x| '!' + x }}%"]))
  }

  # Name types
  module Type
    FIRST_NAME  = 1
    MIDDLE_NAME = 2
    LAST_NAME   = 3
  end

  def get_name_type
  end

end
