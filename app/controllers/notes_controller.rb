class NotesController < ApplicationController

  def show
    @note = Note.find(params[:id])
  end

  def create
    @site = Site.find(params[:site_id])
    @note = @site.notes.create(note_params)

    if @note.save
      redirect_to site_path(@site)
    else
      flash[:Error] = "Please complete all fields"
    end
  end

  def edit
    @site = Site.find(params[:site_id])
    @note = @site.note.find(note_params)
  end

  def destroy
   @site = Site.find(params[:site_id])
   @note = @site.notes.find(params[:id])
   @note.destroy
   redirect_to site_path(@site)
 end


  private
  def note_params
    params.require(:note).permit(:body)
  end
end
