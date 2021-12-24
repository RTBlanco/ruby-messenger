class CreateConversations < ActiveRecord::Migration[7.0]
  def change
    create_table :conversations do |t|
      t.belongs_to :user
      t.integer :participant_id
      # t.belongs_to :participant, foreign_key: true
      
      t.timestamps
    end
  end
end
