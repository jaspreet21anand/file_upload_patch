class AddReferenceAttachment < ActiveRecord::Migration
  def change
    add_column :attachments, :person_id, :integer, index: true
  end
end
