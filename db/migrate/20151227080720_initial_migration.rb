class InitialMigration < ActiveRecord::Migration
  def change
    create_table :users, :force => true do |t|
      t.string :email, null: false
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.timestamp
    end

    create_table :identities, :force => true do |t|
      t.string :auth_provider, null: false
      t.string :auth_uid, null: false
      t.references :user
    end

    create_table :task_groups, :force => true do |t|
      t.string :title, null: false
      t.text :description, null: false, default: ""
      t.timestamp
    end

    create_table :tasks, :force => true do |t|
      t.string :title, null: false
      t.text :description, null: false, default: ""
      t.integer :points
      t.timestamp
      t.references :task_group
    end
  end
end
