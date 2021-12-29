require "application_system_test_case"

class Geral::VeiculoPessoasTest < ApplicationSystemTestCase
  setup do
    @geral_veiculo_pessoa = geral_veiculo_pessoas(:one)
  end

  test "visiting the index" do
    visit geral_veiculo_pessoas_url
    assert_selector "h1", text: "Geral/Veiculo Pessoas"
  end

  test "creating a Veiculo pessoa" do
    visit geral_veiculo_pessoas_url
    click_on "New Geral/Veiculo Pessoa"

    fill_in "Pessoa", with: @geral_veiculo_pessoa.pessoa_id
    fill_in "Veiculo", with: @geral_veiculo_pessoa.veiculo_id
    click_on "Create Veiculo pessoa"

    assert_text "Veiculo pessoa was successfully created"
    click_on "Back"
  end

  test "updating a Veiculo pessoa" do
    visit geral_veiculo_pessoas_url
    click_on "Edit", match: :first

    fill_in "Pessoa", with: @geral_veiculo_pessoa.pessoa_id
    fill_in "Veiculo", with: @geral_veiculo_pessoa.veiculo_id
    click_on "Update Veiculo pessoa"

    assert_text "Veiculo pessoa was successfully updated"
    click_on "Back"
  end

  test "destroying a Veiculo pessoa" do
    visit geral_veiculo_pessoas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Veiculo pessoa was successfully destroyed"
  end
end
