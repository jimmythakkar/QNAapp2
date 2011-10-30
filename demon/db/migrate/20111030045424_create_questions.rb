class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
    add_index :questions, [:user_id, :created_at]

  end

  def self.down
    drop_table :questions
  end
end
