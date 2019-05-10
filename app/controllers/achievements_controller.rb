class AchievementsController < ApplicationController
  def index
    @achievements = Achievement.all
  end

  def create
    @achievement = Achievement.new(post_params)
    respond_to do |format|
      if @achievement.save
        format.html { redirect_to index, notice: 'Achievement was successfully created.' }
      else
        format.html { render index }
        format.json { render json: @achievement.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @achievement.destroy
    respond_to do |format|
      format.html { redirect_to index, notice: 'Achievement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @achievement.update(post_params)
        format.html { redirect_to index, notice: 'Achievement was successfully updated.' }
      else
        format.html { render index }
        format.json { render json: @achievement.errors, status: :unprocessable_entity }
      end
    end
  end
end
