require 'test_helper'

class Geral::VeiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geral_veiculo = geral_veiculos(:one)
  end

  test "should get index" do
    get geral_veiculos_url
    assert_response :success
  end

  test "should get new" do
    get new_geral_veiculo_url
    assert_response :success
  end

  test "should create geral_veiculo" do
    assert_difference('Geral::Veiculo.count') do
      post geral_veiculos_url, params: { geral_veiculo: { ano: @geral_veiculo.ano, name_carro_id: @geral_veiculo.name_carro_id, placa: @geral_veiculo.placa, renavam: @geral_veiculo.renavam } }
    end

    assert_redirected_to geral_veiculo_url(Geral::Veiculo.last)
  end

  test "should show geral_veiculo" do
    get geral_veiculo_url(@geral_veiculo)
    assert_response :success
  end

  test "should get edit" do
    get edit_geral_veiculo_url(@geral_veiculo)
    assert_response :success
  end

  test "should update geral_veiculo" do
    patch geral_veiculo_url(@geral_veiculo), params: { geral_veiculo: { ano: @geral_veiculo.ano, name_carro_id: @geral_veiculo.name_carro_id, placa: @geral_veiculo.placa, renavam: @geral_veiculo.renavam } }
    assert_redirected_to geral_veiculo_url(@geral_veiculo)
  end

  test "should destroy geral_veiculo" do
    assert_difference('Geral::Veiculo.count', -1) do
      delete geral_veiculo_url(@geral_veiculo)
    end

    assert_redirected_to geral_veiculos_url
  end
end
