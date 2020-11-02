class EmployeesController < ApplicationController

    before_action :find_emp, only: [:show, :edit, :update, :destroy]

    def index 
        @employees = Employee.all 
    end

    def new
        @employee = Employee.new
    end

    def create 
        @employee = Employee.new(emp_params)
        if @employee.save
            redirect_to @employee
        else
            render :new
        end
    end

    # def show
    # end

    # def edit
    # end

    def update
        @employee.update(emp_params)
        if @employee.save
            redirect_to @employee
        else 
            render :edit
        end
    end

    def destroy
        @employee.destroy
        redirect_to employees_path
    end

    private 
    
    def find_emp
        @employee = Employee.find(params[:id])
    end

    def emp_params
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :img_url, :dog_id)
    end

end
