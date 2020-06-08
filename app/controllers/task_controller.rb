class TaskController < ApplicationController

    def create
        @id = current_user.id
        @task = Task.new(todolist_id: params[:todolist_id], content: params[:task], done: false)

        if @task.save
          puts "task Save"
          puts params
          @user = User.find_by id:@id;
          @tasks = User.find_by(id:@id).todolist.tasks
          redirect_to todolist_path(current_user.id);
        else
          puts "fail";
          @tasks = User.find_by(id:@id).todolist.tasks
          redirect_to todolist_path(current_user.id);
        end
    end

    def destroy
      puts params
      
      @task = Task.find(params[:id])
      @task.destroy

      redirect_to todolist_path(current_user.id);
    end

    def update
      # Méthode qui met à jour le potin à partir du contenu du formulaire de edit.html.erb, soumis par l'utilisateur
      # pour info, le contenu de ce formulaire sera accessible dans le hash params
      # Une fois la modification faite, on redirige généralement vers la méthode show (pour afficher le potin modifié)
      puts "blabla"
      @task = Task.find(params[:id])
      if @task.update(done: !@task.done)
        redirect_to todolist_path(current_user.id);
      else
        puts "raté"
        redirect_to todolist_path(current_user.id);
      end
    end
end
