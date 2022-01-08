require "test_helper"

class SneakersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sneaker = sneakers(:one)
  end

  test "should get index" do
    get sneakers_url, as: :json
    assert_response :success
  end

  test "should create sneaker" do
    assert_difference('Sneaker.count') do
      post sneakers_url, params: { sneaker: { brand: @sneaker.brand, category: @sneaker.category, colorway: @sneaker.colorway, description: @sneaker.description, name: @sneaker.name, release_date: @sneaker.release_date, silhouette: @sneaker.silhouette, sku: @sneaker.sku } }, as: :json
    end

    assert_response 201
  end

  test "should show sneaker" do
    get sneaker_url(@sneaker), as: :json
    assert_response :success
  end

  test "should update sneaker" do
    patch sneaker_url(@sneaker), params: { sneaker: { brand: @sneaker.brand, category: @sneaker.category, colorway: @sneaker.colorway, description: @sneaker.description, name: @sneaker.name, release_date: @sneaker.release_date, silhouette: @sneaker.silhouette, sku: @sneaker.sku } }, as: :json
    assert_response 200
  end

  test "should destroy sneaker" do
    assert_difference('Sneaker.count', -1) do
      delete sneaker_url(@sneaker), as: :json
    end

    assert_response 204
  end
end
