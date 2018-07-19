class ChangeTable < ActiveRecord::Migration[5.2]
  def change
    change_table :answers do |t|
      t.rename :category, :category_id
    end
  end
end
