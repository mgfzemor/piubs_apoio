class AddCategoryRefToAnswers < ActiveRecord::Migration[5.2]
  def change
    add_reference :answers, :category, foreign_key: true
  end
end