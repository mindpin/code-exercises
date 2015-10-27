class Pet
  include Mongoid::Document
  include Mongoid::Timestamps

  field :kind, type: String
  field :age, type: Integer
end