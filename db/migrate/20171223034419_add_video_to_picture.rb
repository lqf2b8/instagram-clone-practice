class AddVideoToPicture < ActiveRecord::Migration[5.1]
  def change
    add_column :pictures, :video, :string
  end
end
