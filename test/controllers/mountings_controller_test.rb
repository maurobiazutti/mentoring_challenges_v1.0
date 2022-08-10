require "test_helper"

class MountingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mounting = mountings(:one)
  end

  test "should get index" do
    get mountings_url
    assert_response :success
  end

  test "should get new" do
    get new_mounting_url
    assert_response :success
  end

  test "should create mounting" do
    assert_difference("Mounting.count") do
      post mountings_url, params: { mounting: { book_id: @mounting.book_id, part_id: @mounting.part_id } }
    end

    assert_redirected_to mounting_url(Mounting.last)
  end

  test "should show mounting" do
    get mounting_url(@mounting)
    assert_response :success
  end

  test "should get edit" do
    get edit_mounting_url(@mounting)
    assert_response :success
  end

  test "should update mounting" do
    patch mounting_url(@mounting), params: { mounting: { book_id: @mounting.book_id, part_id: @mounting.part_id } }
    assert_redirected_to mounting_url(@mounting)
  end

  test "should destroy mounting" do
    assert_difference("Mounting.count", -1) do
      delete mounting_url(@mounting)
    end

    assert_redirected_to mountings_url
  end
end
