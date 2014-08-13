class ProjectsController < ApplicationController
   
  def new
    @project =Project.new
  end
  
    def create
     @project = Project.new(project_params)
     
     if @project.save
      redirect_to @project, notice: 'Project added successfully'
     else
         render 'new'
      end
    end
    
    def index
      @projects = Project.all
    end
  
   def edit
      @project = Project.find(params[:id])
    
   end
   
     def update
      @project = Project.find(params[:id])
      if @project.update_attributes(params[:prject])
         redirect_to :action => 'show', :id => @project
      else
         render :action => 'edit'
      end
   end
   
  def show
    @project = Project.find(params[:id])
  end
  
    def destroy
    @project = Project.find(params[:id])
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was deleted successfully'}
      format.json { head :no_content }
    end
  end
  
  private
    def project_params
      params.require(:project).permit(:projectname, :teamleader, :clientname)
    end
end
