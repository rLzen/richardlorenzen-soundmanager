class MusicListsController < ApplicationController
  before_action :set_music_list, only: [:show, :edit, :update, :destroy]

  # GET /music_lists
  # GET /music_lists.json
  def index
    @music_lists = MusicList.all
  end

  # GET /music_lists/1
  # GET /music_lists/1.json
  def show
  end

  # GET /music_lists/new
  def new
    @music_list = MusicList.new
  end

  # GET /music_lists/1/edit
  def edit
  end

  # POST /music_lists
  # POST /music_lists.json
  def create
    @music_list = MusicList.new(music_list_params)

    respond_to do |format|
      if @music_list.save
        format.html { redirect_to @music_list, notice: 'Music list was successfully created.' }
        format.json { render :show, status: :created, location: @music_list }
      else
        format.html { render :new }
        format.json { render json: @music_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /music_lists/1
  # PATCH/PUT /music_lists/1.json
  def update
    respond_to do |format|
      if @music_list.update(music_list_params)
        format.html { redirect_to @music_list, notice: 'Music list was successfully updated.' }
        format.json { render :show, status: :ok, location: @music_list }
      else
        format.html { render :edit }
        format.json { render json: @music_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /music_lists/1
  # DELETE /music_lists/1.json
  def destroy
    @music_list.destroy
    respond_to do |format|
      format.html { redirect_to music_lists_url, notice: 'Music list was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_music_list
      @music_list = MusicList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def music_list_params
      params.require(:music_list).permit(:name, :artist, :album, :song, :format, :length, :size, :user_id)
    end
end
