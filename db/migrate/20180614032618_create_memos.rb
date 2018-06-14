class CreateMemos < ActiveRecord::Migration[5.2]
  def change
    create_table :memos do |t|
      t.references :memoable, polymorphic: true, index: true
      t.string :body

      t.timestamps
    end
  end
end
