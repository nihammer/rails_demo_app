class LastName < ApplicationRecord

  scope :partialmatch_column, ->(column, e) {
    where(sanitize_sql_array(["`#{column}` like ? escape '!'", "%#{e.gsub(/[!%_]/) { |x| '!' + x }}%"]))
  }
end
