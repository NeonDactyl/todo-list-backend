class RemoveEditingFromTodo < ActiveRecord::Migration[6.0]
  def change
    remove_column :todos, :editing
  end
end
