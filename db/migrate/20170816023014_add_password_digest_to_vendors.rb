class AddPasswordDigestToVendors < ActiveRecord::Migration[5.1]
  def change
    add_column :vendors, :password, :string
    add_column :vendors, :password_confirmation, :string
  end
end
