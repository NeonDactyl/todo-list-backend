class AddListToTodo < ActiveRecord::Migration[6.0]
  def change
    add_reference :todos, :list, foreign_key: true
  end
end
