class TodolistController < ApplicationController
    before_action :authenticate_user!

    def index
        @id = current_user.id
        @user = User.find_by id:@id;
        @todolist = @user.todolist;
    end

    def show
      @id = current_user.id
      @user = User.find_by id:@id;
      @todolist = @user.todolist;
      @tasks = User.find_by(id:@id).todolist.tasks
    end

    def create
        @id = current_user.id
        @todolist = Todolist.new(user_id: @id)

        if @todolist.save
          puts "Cat Save"
          puts params
          @user = User.find_by id:@id;
          @tasks = User.find_by(id:@id).todolist.tasks
          redirect_to todolist_path(current_user.id);
        else
          puts "fail";
          redirect_to todolist_path(current_user.id);
        end
      end
end
