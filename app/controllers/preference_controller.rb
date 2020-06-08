class PreferenceController < ApplicationController
    def new
        
    end

    def create
        @id = current_user.id
        @pref = Preference.new(user_id: @id, background: params[:bg], color: [:color])

        if @pref.save
            redirect_to :root
        else
          puts "fail";
          redirect_to :root
        end
    end

    def update
        @id = current_user.id
        @pref = Preference.find_by(user_id: current_user.id)

        if @pref.update(background: params[:bg], color: [:color])
            puts "edit";
            redirect_to :root
        else
            puts "fail";
            redirect_to :root
        end
    end
end
