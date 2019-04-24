# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  # include ApplicationHelper
  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  # def new
  #   super
  # end

  # POST /resource
  def create
      student_params = {
        first_name: params[:first_name],
        last_name: params[:last_name],
        date_of_birth: params[:date_of_birth],
        address: params[:address],
        city: params[:city],
        educational_establishment: EducationalEstablishment.find_by(title: params[:educational_establishment]),
        country: params[:country],
        subject: Subject.find_by(title: params[:subject]),
        level: Level.find_by(title: params[:level]),
        email: params[:user][:email]
      }
      teacher_params = {
        first_name: params[:first_name],
        last_name: params[:last_name],
        date_of_birth: params[:date_of_birth],
        address: params[:address],
        city: params[:city],
        educational_establishment: EducationalEstablishment.find_by(title: params[:educational_establishment]),
        country: params[:country],
        subject: Subject.find_by(title: params[:subject]),
        degrees: params[:degrees],
        email: params[:user][:email]
      }

    if params[:degrees].nil? && !params[:level].nil?
      user = Student.new(student_params)
    elsif params[:level].nil? && !params[:degrees].nil?
      user = Teacher.new(teacher_params)
    end

    user_params = params.permit(:email, :username, :password, :password_confirmation)
    unless params[:user].nil?
      super
      user.save if user
      if params[:degrees].nil? && !params[:level].nil?
        @user.update(status: "Student")
      elsif params[:level].nil? && !params[:degrees].nil?
        @user.update(status: "Teacher")
      end
      @user.avatar.attach(params[:user][:avatar])
    else
      @user = User.new(user_params)
      respond_to do |format|
        if @user.save
          user.save if user
          @user.avatar.attach(params[:avatar])
          format.html{redirect_to root_path, notice: "Registered successfully"}
        else
          format.html{render :new, alert: @user.errors}
        end
      end
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  def update
    # p params.inspect
    user_params = params[:user][:password] == "" ? params.require(:user).permit(:email, :username) : params.require(:user).permit(:email, :username, :password, :password_confirmation)
    respond_to do |format|
      if @user.valid_password?(params[:user][:current_password]) && @user.update(user_params)
        format.html { redirect_to @user, notice: "Compte mis à jour avec succès"}
      else
        format.html { render :edit, alert: "Veuiller entrer le mot de passe actuel pour confirmer les changements" }
      end
    end
    # super
  end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
end
