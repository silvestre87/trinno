require 'test_helper'

class Geral::NomeCarrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geral_nome_carro = geral_nome_carros(:one)
  end

  test "should get index" do
    get geral_nome_carros_url
    assert_response :success
  end

  test "should get new" do
    get new_geral_nome_carro_url
    assert_response :success
  end

  test "should create geral_nome_carro" do
    assert_difference('Geral::NomeCarro.count') do
      post geral_nome_carros_url, params: { geral_nome_carro: { marca_id: @geral_nome_carro.marca_id, name: @geral_nome_carro.name } }
    end

    assert_redirected_to geral_nome_carro_url(Geral::NomeCarro.last)
  end

  test "should show geral_nome_carro" do
    get geral_nome_carro_url(@geral_nome_carro)
    assert_response :success
  end

  test "should get edit" do
    get edit_geral_nome_carro_url(@geral_nome_carro)
    assert_response :success
  end

  test "should update geral_nome_carro" do
    patch geral_nome_carro_url(@geral_nome_carro), params: { geral_nome_carro: { marca_id: @geral_nome_carro.marca_id, name: @geral_nome_carro.name } }
    assert_redirected_to geral_nome_carro_url(@geral_nome_carro)
  end

  test "should destroy geral_nome_carro" do
    assert_difference('Geral::NomeCarro.count', -1) do
      delete geral_nome_carro_url(@geral_nome_carro)
    end

    assert_redirected_to geral_nome_carros_url
  end
end
