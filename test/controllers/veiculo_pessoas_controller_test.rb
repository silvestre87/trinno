require 'test_helper'

class VeiculoPessoasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @veiculo_pessoa = veiculo_pessoas(:one)
  end

  test "should get index" do
    get veiculo_pessoas_url
    assert_response :success
  end

  test "should get new" do
    get new_veiculo_pessoa_url
    assert_response :success
  end

  test "should create veiculo_pessoa" do
    assert_difference('VeiculoPessoa.count') do
      post veiculo_pessoas_url, params: { veiculo_pessoa: { pessoa_id: @veiculo_pessoa.pessoa_id, veiculo_id: @veiculo_pessoa.veiculo_id } }
    end

    assert_redirected_to veiculo_pessoa_url(VeiculoPessoa.last)
  end

  test "should show veiculo_pessoa" do
    get veiculo_pessoa_url(@veiculo_pessoa)
    assert_response :success
  end

  test "should get edit" do
    get edit_veiculo_pessoa_url(@veiculo_pessoa)
    assert_response :success
  end

  test "should update veiculo_pessoa" do
    patch veiculo_pessoa_url(@veiculo_pessoa), params: { veiculo_pessoa: { pessoa_id: @veiculo_pessoa.pessoa_id, veiculo_id: @veiculo_pessoa.veiculo_id } }
    assert_redirected_to veiculo_pessoa_url(@veiculo_pessoa)
  end

  test "should destroy veiculo_pessoa" do
    assert_difference('VeiculoPessoa.count', -1) do
      delete veiculo_pessoa_url(@veiculo_pessoa)
    end

    assert_redirected_to veiculo_pessoas_url
  end
end
