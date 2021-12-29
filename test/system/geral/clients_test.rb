require "application_system_test_case"

class Geral::ClientsTest < ApplicationSystemTestCase
  setup do
    @geral_client = geral_clients(:one)
  end

  test "visiting the index" do
    visit geral_clients_url
    assert_selector "h1", text: "Geral/Clients"
  end

  test "creating a Client" do
    visit geral_clients_url
    click_on "New Geral/Client"

    fill_in "Company name", with: @geral_client.company_name
    fill_in "Document", with: @geral_client.document
    fill_in "Email", with: @geral_client.email
    fill_in "Name", with: @geral_client.name
    fill_in "Notes", with: @geral_client.notes
    fill_in "Phone", with: @geral_client.phone
    fill_in "Status", with: @geral_client.status
    fill_in "Users", with: @geral_client.users_id
    click_on "Create Client"

    assert_text "Client was successfully created"
    click_on "Back"
  end

  test "updating a Client" do
    visit geral_clients_url
    click_on "Edit", match: :first

    fill_in "Company name", with: @geral_client.company_name
    fill_in "Document", with: @geral_client.document
    fill_in "Email", with: @geral_client.email
    fill_in "Name", with: @geral_client.name
    fill_in "Notes", with: @geral_client.notes
    fill_in "Phone", with: @geral_client.phone
    fill_in "Status", with: @geral_client.status
    fill_in "Users", with: @geral_client.users_id
    click_on "Update Client"

    assert_text "Client was successfully updated"
    click_on "Back"
  end

  test "destroying a Client" do
    visit geral_clients_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client was successfully destroyed"
  end
end
