class StudentsController < ApplicationController
 before_action :set_student, :except => [:index,:new,:create]
  def index
  @students = Student.all
  end

  def new
    @student = Student.new
  end

 def create
       @students = Student.all
    @student = Student.create(student_params)
  end

  def edit
    respond_to do |format|
      format.js
    end
  end

 def update
      @students = Student.all
    @student.update(student_params)
     
  end

  def show
     respond_to do |format|
      format.js
    end
  end


  def destroy
    @students = Student.all
      @student.destroy
      respond_to do |format|
        format.js
     end
   end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:student).permit!
  end

end
