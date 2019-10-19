class ListsController < ApplicationController
  ActiveRecord::Base.include_root_in_json = false

  def index
    lists = List.all
    render json: lists.as_json(
      include: { todos: {
        except: [:created_at, :updated_at] } },
        except: [:created_at, :updated_at])
  end

  def show
    list = List.find(params[:id])
    render json: list.as_json(
      include: { todos: {
        except: [:created_at, :updated_at] } },
        except: [:created_at, :updated_at])
  end
end
