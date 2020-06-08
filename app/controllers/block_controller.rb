class BlockController < ApplicationController
    before_action :authenticate_user!
    
    def index
        @id = current_user.id
        @user = User.find_by id:@id;
        @blocnotes = @user.blocks;
      end
    
      def show
        
      end

      def edit
        @id = current_user.id
        @user = User.find_by id:@id;
        @blocnotes = @user.bloc_notes;
      end

      def create
        @id = current_user.id
        @blocnote = Block.new(user_id: @id, title: params[:title], color: params[:color])

        if @blocnote.save
          puts "Cat Save"
          puts params
          @user = User.find_by id:@id;
          @blocnotes = @user.blocks;
          redirect_to block_index_path;
        else
          puts "fail";
          redirect_to block_index_path;
        end
      end

      def update
        puts "ok"
        
        BlocNote.find(12).update(notes: ["blibli", "bazz", params[:title]]);
        redirect_to bloc_notes_path;
      end

      def destroy
        puts params

        @block = Block.find(params[:id])
        @block.destroy

        @notes = Notte.where(block_id: params[:id])

        @notes.each do |note|
          note.destroy
        end

      redirect_to block_index_path;
      end
end
