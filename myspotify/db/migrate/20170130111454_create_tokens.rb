class CreateTokens < ActiveRecord::Migration[5.0]
  def change
    create_table :tokens do |t|
      t.string :uid

      t.timestamps
    end
  end
end
