require 'test_helper'

class NomeCarrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nome_carro = nome_carros(:one)
  end

  test "should get index" do
    get nome_carros_url
    assert_response :success
  end

  test "should get new" do
    get new_nome_carro_url
    assert_response :success
  end

  test "should create nome_carro" do
    assert_difference('NomeCarro.count') do
      post nome_carros_url, params: { nome_carro: { name: @nome_carro.name } }
    end

    assert_redirected_to nome_carro_url(NomeCarro.last)
  end

  test "should show nome_carro" do
    get nome_carro_url(@nome_carro)
    assert_response :success
  end

  test "should get edit" do
    get edit_nome_carro_url(@nome_carro)
    assert_response :success
  end

  test "should update nome_carro" do
    patch nome_carro_url(@nome_carro), params: { nome_carro: { name: @nome_carro.name } }
    assert_redirected_to nome_carro_url(@nome_carro)
  end

  test "should destroy nome_carro" do
    assert_difference('NomeCarro.count', -1) do
      delete nome_carro_url(@nome_carro)
    end

    assert_redirected_to nome_carros_url
  end
end
