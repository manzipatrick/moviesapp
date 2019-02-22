require 'test_helper'

class MovieappsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movieapp = movieapps(:one)
  end

  test "should get index" do
    get movieapps_url
    assert_response :success
  end

  test "should get new" do
    get new_movieapp_url
    assert_response :success
  end

  test "should create movieapp" do
    assert_difference('Movieapp.count') do
      post movieapps_url, params: { movieapp: { attachment: @movieapp.attachment, category: @movieapp.category, price: @movieapp.price, title: @movieapp.title, year: @movieapp.year } }
    end

    assert_redirected_to movieapp_url(Movieapp.last)
  end

  test "should show movieapp" do
    get movieapp_url(@movieapp)
    assert_response :success
  end

  test "should get edit" do
    get edit_movieapp_url(@movieapp)
    assert_response :success
  end

  test "should update movieapp" do
    patch movieapp_url(@movieapp), params: { movieapp: { attachment: @movieapp.attachment, category: @movieapp.category, price: @movieapp.price, title: @movieapp.title, year: @movieapp.year } }
    assert_redirected_to movieapp_url(@movieapp)
  end

  test "should destroy movieapp" do
    assert_difference('Movieapp.count', -1) do
      delete movieapp_url(@movieapp)
    end

    assert_redirected_to movieapps_url
  end
end
