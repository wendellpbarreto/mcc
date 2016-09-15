require 'test_helper'

class ArtworksControllerTest < ActionController::TestCase
  setup do
    @artwork = artworks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:artworks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create artwork" do
    assert_difference('Artwork.count') do
      post :create, artwork: { dimensions: @artwork.dimensions, image: @artwork.image, material: @artwork.material, name: @artwork.name, observation: @artwork.observation, register_number: @artwork.register_number, state_of_conservation: @artwork.state_of_conservation, term_id: @artwork.term_id }
    end

    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should show artwork" do
    get :show, id: @artwork
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @artwork
    assert_response :success
  end

  test "should update artwork" do
    patch :update, id: @artwork, artwork: { dimensions: @artwork.dimensions, image: @artwork.image, material: @artwork.material, name: @artwork.name, observation: @artwork.observation, register_number: @artwork.register_number, state_of_conservation: @artwork.state_of_conservation, term_id: @artwork.term_id }
    assert_redirected_to artwork_path(assigns(:artwork))
  end

  test "should destroy artwork" do
    assert_difference('Artwork.count', -1) do
      delete :destroy, id: @artwork
    end

    assert_redirected_to artworks_path
  end
end
