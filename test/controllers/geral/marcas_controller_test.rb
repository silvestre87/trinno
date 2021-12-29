require 'test_helper'

class Geral::MarcasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geral_marca = geral_marcas(:one)
  end

  test "should get index" do
    get geral_marcas_url
    assert_response :success
  end

  test "should get new" do
    get new_geral_marca_url
    assert_response :success
  end

  test "should create geral_marca" do
    assert_difference('Geral::Marca.count') do
      post geral_marcas_url, params: { geral_marca: { name: @geral_marca.name } }
    end

    assert_redirected_to geral_marca_url(Geral::Marca.last)
  end

  test "should show geral_marca" do
    get geral_marca_url(@geral_marca)
    assert_response :success
  end

  test "should get edit" do
    get edit_geral_marca_url(@geral_marca)
    assert_response :success
  end

  test "should update geral_marca" do
    patch geral_marca_url(@geral_marca), params: { geral_marca: { name: @geral_marca.name } }
    assert_redirected_to geral_marca_url(@geral_marca)
  end

  test "should destroy geral_marca" do
    assert_difference('Geral::Marca.count', -1) do
      delete geral_marca_url(@geral_marca)
    end

    assert_redirected_to geral_marcas_url
  end
end
