# frozen_string_literal: true

class UsersController < ApplicationController
  before_action :set_user, only: %i[show edit update destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end

  # GET /users/1
  # GET /users/1.json
  def show; end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit; end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'User was successfully created.' }
        format.json { render :edit, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /users/1
  # PATCH/PUT /users/1.json
  def update
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to home_path, notice: 'User was successfully updated.' }
        format.json { render home_path, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def make_admin
    @user=User.find(params[:user][:id])
    @user.role='admin'
    respond_to do |format|
      if @user.save(validate: false)
        format.html { redirect_to users_path, notice: 'User has been promoted to admin'}
      else
        format.html { redirect_to :users, notice: 'There was an error'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def remove_admin
    @user=User.find(params[:user][:id])
    @user.role='user'
    respond_to do |format|
      if @user.save(validate: false)
        format.html { redirect_to users_path, notice: 'User has been demoted.'}
      else
        format.html { redirect_to :users, notice: 'There was an error'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  def recover_post
    @post=Post.find(params[:post][:id])
    @post.dumped= false
    respond_to do |format|
      if @post.save(validate: false)
        format.html { redirect_to request.referrer, notice: 'Post recovered'}
      else
        format.html { redirect_to request.referrer, notice: 'There was an error'}
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end
  def recover_user
    @block=Block.find(user_id: params[:user][:id])
    respond_to do |format|
      if @block.destroy
        format.html { redirect_to @user, notice: 'Post recovered'}
      else
        format.html { redirect_to request.referrer, notice: 'There was an error'}
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_user
    if user_signed_in?
      if current_user.nickname==nil
        @user=User.find(current_user.id)
      else
        @user = User.find(params[:id])
      end
    else
      @user = User.find(params[:id])
    end
  rescue ActiveRecord::RecordNotFound => e
    @user = User.find(params[:user_id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def user_params
    params.require(:user).permit(:nickname, :email, :password, :role, :name, :last_name, :bio, :location, :geofence, :profession, :profile_pic)
  end
end
