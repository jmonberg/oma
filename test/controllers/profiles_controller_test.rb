require 'test_helper'

class ProfilesControllerTest < ActionController::TestCase
  setup do
    @profile = profiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:profiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create profile" do
    assert_difference('Profile.count') do
      post :create, profile: { body: @profile.body, created_at: @profile.created_at, image_url: @profile.image_url, location: @profile.location, suspended_at: @profile.suspended_at, suspension_status: @profile.suspension_status, title: @profile.title, updated_at: @profile.updated_at, url: @profile.url, user_id: @profile.user_id }
    end

    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should show profile" do
    get :show, id: @profile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @profile
    assert_response :success
  end

  test "should update profile" do
    patch :update, id: @profile, profile: { body: @profile.body, created_at: @profile.created_at, image_url: @profile.image_url, location: @profile.location, suspended_at: @profile.suspended_at, suspension_status: @profile.suspension_status, title: @profile.title, updated_at: @profile.updated_at, url: @profile.url, user_id: @profile.user_id }
    assert_redirected_to profile_path(assigns(:profile))
  end

  test "should destroy profile" do
    assert_difference('Profile.count', -1) do
      delete :destroy, id: @profile
    end

    assert_redirected_to profiles_path
  end
end
