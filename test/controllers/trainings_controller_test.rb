require "test_helper"

class TrainingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @training = trainings(:one)
  end

  test "should get index" do
    get trainings_url, as: :json
    assert_response :success
  end

  test "should create training" do
    assert_difference("Training.count") do
      post trainings_url, params: { training: {  } }, as: :json
    end

    assert_response :created
  end

  test "should show training" do
    get training_url(@training), as: :json
    assert_response :success
  end

  test "should update training" do
    patch training_url(@training), params: { training: {  } }, as: :json
    assert_response :success
  end

  test "should destroy training" do
    assert_difference("Training.count", -1) do
      delete training_url(@training), as: :json
    end

    assert_response :no_content
  end
end
