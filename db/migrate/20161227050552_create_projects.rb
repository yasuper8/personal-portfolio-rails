class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :descriptions
      t.string :website_url
      t.string :github_url
      t.string :project_img

      t.timestamps
    end
  end
end
