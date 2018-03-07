class FirstName < ApplicationRecord

  scope :gender, ->(gender) { where('gender = ?', gender) }
  scope :partialmatch_column, ->(column, e) {
    where(sanitize_sql_array(["`#{column}` like ? escape '!'", "%#{e.gsub(/[!%_]/) { |x| '!' + x }}%"]))
  }

  # Name types
  module Gender
    MALE = 1
    FEMALE = 2
  end
end
