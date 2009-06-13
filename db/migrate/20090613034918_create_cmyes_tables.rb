class CreateCmyesTables < ActiveRecord::Migration
  def self.up
    create_table "comatose_page_versions", :force => true do |t|
      t.integer  "comatose_page_id"
      t.integer  "version"
      t.integer  "parent_id"
      t.text     "full_path"
      t.string   "title"
      t.string   "slug"
      t.string   "keywords"
      t.text     "body"
      t.string   "filter_type",      :limit => 25
      t.string   "author"
      t.integer  "position",                       :default => 0
      t.datetime "updated_on"
      t.datetime "created_on"
    end

    create_table "comatose_pages", :force => true do |t|
      t.integer  "parent_id"
      t.text     "full_path"
      t.string   "title"
      t.string   "slug"
      t.string   "keywords"
      t.text     "body"
      t.string   "filter_type", :limit => 25
      t.string   "author"
      t.integer  "position",                  :default => 0
      t.integer  "version"
      t.datetime "updated_on"
      t.datetime "created_on"
    end

    create_table "page_assets", :force => true do |t|
      t.string   "attachment_file_name"
      t.string   "attachment_content_type"
      t.integer  "attachment_file_size"
      t.datetime "attachment_updated_at"
    end

    create_table "page_images", :force => true do |t|
      t.string   "image_file_name"
      t.string   "image_content_type"
      t.integer  "image_file_size"
      t.datetime "image_updated_at"
      t.integer  "image_width"
      t.integer  "image_height"
    end
  end

  def self.down
    
  end
end
