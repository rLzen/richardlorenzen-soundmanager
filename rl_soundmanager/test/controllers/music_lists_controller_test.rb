require 'test_helper'

class MusicListsControllerTest < ActionController::TestCase
  setup do
    @music_list = music_lists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:music_lists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create music_list" do
    assert_difference('MusicList.count') do
      post :create, music_list: { album: @music_list.album, artist: @music_list.artist, format: @music_list.format, length: @music_list.length, name: @music_list.name, size: @music_list.size, song: @music_list.song, user_id: @music_list.user_id }
    end

    assert_redirected_to music_list_path(assigns(:music_list))
  end

  test "should show music_list" do
    get :show, id: @music_list
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @music_list
    assert_response :success
  end

  test "should update music_list" do
    patch :update, id: @music_list, music_list: { album: @music_list.album, artist: @music_list.artist, format: @music_list.format, length: @music_list.length, name: @music_list.name, size: @music_list.size, song: @music_list.song, user_id: @music_list.user_id }
    assert_redirected_to music_list_path(assigns(:music_list))
  end

  test "should destroy music_list" do
    assert_difference('MusicList.count', -1) do
      delete :destroy, id: @music_list
    end

    assert_redirected_to music_lists_path
  end
end
