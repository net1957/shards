class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :message
      t.string :remark

      t.timestamps
    end
  end
end
