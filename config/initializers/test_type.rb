# frozen_string_literal: true

class CapitalizeType < ActiveRecord::Type::String
  # from DB to app
  def deserialize(value)
    value.is_a?(String) ? super(value.capitalize) : super(value)
  end

  # from app to DB
  def serialize(value)
    super(value)
  end
end

# Register the type
ActiveRecord::Type.register(:capitalize, CapitalizeType)
