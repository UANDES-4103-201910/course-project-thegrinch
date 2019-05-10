class CategoriesController < ApplicationController
  def index
    @categories = Category.all
  end

  def create
    @categorie = Category.new(post_params)
    respond_to do |format|
      if @categorie.save
        format.html { redirect_to index, notice: 'Categorie was successfully created.' }
      else
        format.html { render index }
        format.json { render json: @categorie.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @categorie.destroy
    respond_to do |format|
      format.html { redirect_to index, notice: 'Categorie was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def update
    respond_to do |format|
      if @categorie.update(post_params)
        format.html { redirect_to index, notice: 'Categorie was successfully updated.' }
      else
        format.html { render index }
        format.json { render json: @categorie.errors, status: :unprocessable_entity }
      end
    end
  end
end
