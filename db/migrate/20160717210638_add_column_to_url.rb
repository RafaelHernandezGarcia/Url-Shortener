class AddColumnToUrl < ActiveRecord::Migration[5.0]
  def change
    add_column :urls, :original, :string
  end
end
