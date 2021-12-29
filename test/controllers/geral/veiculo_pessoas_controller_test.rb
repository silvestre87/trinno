require 'test_helper'

class Geral::VeiculoPessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geral_veiculo_pessoa = geral_veiculo_pessoas(:one)
  end

  test "should get index" do
    get geral_veiculo_pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_geral_veiculo_pessoa_url
    assert_response :success
  end

  test "should create geral_veiculo_pessoa" do
    assert_difference('Geral::VeiculoPessoa.count') do
      post geral_veiculo_pessoas_url, params: { geral_veiculo_pessoa: { pessoa_id: @geral_veiculo_pessoa.pessoa_id, veiculo_id: @geral_veiculo_pessoa.veiculo_id } }
    end

    assert_redirected_to geral_veiculo_pessoa_url(Geral::VeiculoPessoa.last)
  end

  test "should show geral_veiculo_pessoa" do
    get geral_veiculo_pessoa_url(@geral_veiculo_pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_geral_veiculo_pessoa_url(@geral_veiculo_pessoa)
    assert_response :success
  end

  test "should update geral_veiculo_pessoa" do
    patch geral_veiculo_pessoa_url(@geral_veiculo_pessoa), params: { geral_veiculo_pessoa: { pessoa_id: @geral_veiculo_pessoa.pessoa_id, veiculo_id: @geral_veiculo_pessoa.veiculo_id } }
    assert_redirected_to geral_veiculo_pessoa_url(@geral_veiculo_pessoa)
  end

  test "should destroy geral_veiculo_pessoa" do
    assert_difference('Geral::VeiculoPessoa.count', -1) do
      delete geral_veiculo_pessoa_url(@geral_veiculo_pessoa)
    end

    assert_redirected_to geral_veiculo_pessoas_url
  end
end
