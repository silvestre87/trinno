require "application_system_test_case"

class Geral::VeiculosTest < ApplicationSystemTestCase
  setup do
    @geral_veiculo = geral_veiculos(:one)
  end

  test "visiting the index" do
    visit geral_veiculos_url
    assert_selector "h1", text: "Geral/Veiculos"
  end

  test "creating a Veiculo" do
    visit geral_veiculos_url
    click_on "New Geral/Veiculo"

    fill_in "Ano", with: @geral_veiculo.ano
    fill_in "Name carro", with: @geral_veiculo.name_carro_id
    fill_in "Placa", with: @geral_veiculo.placa
    fill_in "Renavam", with: @geral_veiculo.renavam
    click_on "Create Veiculo"

    assert_text "Veiculo was successfully created"
    click_on "Back"
  end

  test "updating a Veiculo" do
    visit geral_veiculos_url
    click_on "Edit", match: :first

    fill_in "Ano", with: @geral_veiculo.ano
    fill_in "Name carro", with: @geral_veiculo.name_carro_id
    fill_in "Placa", with: @geral_veiculo.placa
    fill_in "Renavam", with: @geral_veiculo.renavam
    click_on "Update Veiculo"

    assert_text "Veiculo was successfully updated"
    click_on "Back"
  end

  test "destroying a Veiculo" do
    visit geral_veiculos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Veiculo was successfully destroyed"
  end
end
