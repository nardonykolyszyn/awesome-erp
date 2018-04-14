class EnterprisesController < ApplicationController
	before_action :avoid_user_create_other_enterprise, only: [:new]
	def new
  	@enterprise = Enterprise.new
	end

	def edit
	  @enterprise = Enterprise.find(params[:id])
	end

	def create
	  @enterprise = Enterprise.new(enterprise_params)
		if @enterprise.valid?
			@enterprise.save!
			current_user.update!(enterprise_id: @enterprise.id)
			redirect_to root_path, notice: 'Empresa creada'
		else
			render :new
		end
	end

	private
	def enterprise_params
		params.require(:enterprise).permit(:name, :photo)
	end

	def avoid_user_create_other_enterprise
		if current_user.enterprise
			redirect_to root_path, notice: 'Ya tienes una empresa'
		end
	end
end