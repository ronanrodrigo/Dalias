class Album
  include Mongoid::Document
  field :title, type: String
  field :download_link, type: String
  validate :is_link?
  embedded_in :band

  def full_link
    unless self.download_link.include?("http://")
      return "http://" + self.download_link
    else
      return self.download_link
    end
  end

  def is_link?
    unless self.download_link.include?("http://") and self.download_link.include?(".")
      errors.add(:download_link, "Insira um caminho correto. Ex.: http://caminho.com.br/arquivo")
    end
  end
end
