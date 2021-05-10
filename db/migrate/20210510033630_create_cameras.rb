class CreateCameras < ActiveRecord::Migration[6.0]
  def change
    create_table :cameras do |t|
      t.belongs_to :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
