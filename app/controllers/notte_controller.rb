class NotteController < ApplicationController
    def new
        @id = current_user.id
        @user = User.find_by id:@id;
        @blocnotes = @user.blocks;
        @bla = params[:block_id];
    end

    def create
        @id = current_user.id
        @note = Notte.new(block_id: params[:block_id], content: params[:note])

        if @note.save
          puts "Save"
          @user = User.find_by id:@id;
          @notes = @user.blocks;
          redirect_to block_index_path;
        else
          puts "fail";
          redirect_to block_index_path;
        end
    end

    def destroy
      @note = Notte.find(params[:id])
      @note.destroy
    
      redirect_to block_index_path;
    end
end
