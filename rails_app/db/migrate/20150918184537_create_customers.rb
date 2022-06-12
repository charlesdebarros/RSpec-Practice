# frozen_string_literal: true

# Migration file
class CreateCustomers < ActiveRecord::Migration[4.2]
  def change
    create_table :customers do |t|
      t.timestamps null: false
    end
  end
end
