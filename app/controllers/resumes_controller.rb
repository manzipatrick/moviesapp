class ResumesController < ApplicationController
  def index
     @resumes = Resume.all
     
  end
  
  def new
     @resume = Resume.new
  end
  
  def create
     @resume = Resume.new(resume_params)
     
     if @resume.save
        redirect_to resumes_path, notice: "The resume #{@resume.title} has been uploaded."
     else
        render "new"
     end
     
  end
  def edit
   @resume = Resume.find(params[:id])
 end
 
  

 # PATCH/PUT /resumes/1
  # PATCH/PUT /resumes/1.json
  def update
    respond_to do |format|
      if @resume.update(resume_params)
        format.html { redirect_to @resume, notice: 'movie was successfully updated.' }
        format.json { render :show, status: :ok, location: @resume }
      else
        format.html { render :edit }
        format.json { render json: @resume.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def destroy
     @resume = Resume.find(params[:id])
     @resume.destroy
     redirect_to resumes_path, notice:  "The resume #{@resume.title} has been deleted."
  end
  
  private
     def resume_params
     params.require(:resume).permit(:title, :category, :year, :price, :image)
  end
  
end