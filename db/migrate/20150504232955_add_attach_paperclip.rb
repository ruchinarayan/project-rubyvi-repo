class AddAttachPaperclip < ActiveRecord::Migration
  def self.up
      add_column :honors, :attach_file_name,    :string
      add_column :honors, :attach_content_type, :string
      add_column :honors, :attach_file_size,    :integer
      add_column :honors, :attach_updated_at,   :datetime
      add_column :pendings, :attach_file_name,    :string
      add_column :pendings, :attach_content_type, :string
      add_column :pendings, :attach_file_size,    :integer
      add_column :pendings, :attach_updated_at,   :datetime
    end
  
    def self.down
     remove_column :honors, :attach_file_name
     remove_column :honors, :attach_content_type
     remove_column :honors, :attach_file_size
     remove_column :honors, :attach_updated_at
     remove_column :pendings, :attach_file_name
     remove_column :pendings, :attach_content_type
     remove_column :pendings, :attach_file_size
     remove_column :pendings, :attach_updated_at
   end
end
