class Album
  include Mongoid::Document
  field :title, type: String
  field :download_link, type: String
  embedded_in :band
end
