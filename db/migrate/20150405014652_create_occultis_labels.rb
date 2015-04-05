class CreateOccultisLabels < ActiveRecord::Migration
  def change
    create_table :occultis_labels do |t|
      t.binary :secure_message_label
      t.binary :secure_iv_label
      t.binary :secure_message_value
      t.binary :secure_iv_value
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
