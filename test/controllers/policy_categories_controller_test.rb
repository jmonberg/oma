require 'test_helper'

class PolicyCategoriesControllerTest < ActionController::TestCase
  setup do
    @policy_category = policy_categories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:policy_categories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create policy_category" do
    assert_difference('PolicyCategory.count') do
      post :create, policy_category: {  }
    end

    assert_redirected_to policy_category_path(assigns(:policy_category))
  end

  test "should show policy_category" do
    get :show, id: @policy_category
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @policy_category
    assert_response :success
  end

  test "should update policy_category" do
    patch :update, id: @policy_category, policy_category: {  }
    assert_redirected_to policy_category_path(assigns(:policy_category))
  end

  test "should destroy policy_category" do
    assert_difference('PolicyCategory.count', -1) do
      delete :destroy, id: @policy_category
    end

    assert_redirected_to policy_categories_path
  end
end
