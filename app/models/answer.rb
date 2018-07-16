class Answer < ApplicationRecord
  has_many :calls
  def self.search(query)
    where('resposta like ? or pergunta like ?', "%#{query}%", "%#{query}%")
  end
end
