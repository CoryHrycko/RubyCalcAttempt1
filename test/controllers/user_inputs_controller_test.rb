require 'test_helper'

class UserInputsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_input = user_inputs(:one)
  end

  test "should get index" do
    get user_inputs_url
    assert_response :success
  end

  test "should get new" do
    get new_user_input_url
    assert_response :success
  end

  test "should create user_input" do
    assert_difference('UserInput.count') do
      post user_inputs_url, params: { user_input: { input_x: @user_input.input_x, input_y: @user_input.input_y } }
    end

    assert_redirected_to user_input_url(UserInput.last)
  end

  test "should show user_input" do
    get user_input_url(@user_input)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_input_url(@user_input)
    assert_response :success
  end

  test "should update user_input" do
    patch user_input_url(@user_input), params: { user_input: { input_x: @user_input.input_x, input_y: @user_input.input_y } }
    assert_redirected_to user_input_url(@user_input)
  end

  test "should destroy user_input" do
    assert_difference('UserInput.count', -1) do
      delete user_input_url(@user_input)
    end

    assert_redirected_to user_inputs_url
  end
end
