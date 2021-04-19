class ChangeColumnsNunnableFromComments < ActiveRecord::Migration[6.1]
  def change
    change_column_null :comments, :article_id, false
    change_column_null :comments, :authorship, false
    change_column_null :comments, :content, false
  end
end
