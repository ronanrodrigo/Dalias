class Band
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  embeds_many :albums
  accepts_nested_attributes_for :albums, allow_destroy: true
end
