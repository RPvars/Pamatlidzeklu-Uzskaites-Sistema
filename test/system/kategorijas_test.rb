require "application_system_test_case"

class KategorijasTest < ApplicationSystemTestCase
  setup do
    @kategorija = kategorijas(:one)
  end

  test "visiting the index" do
    visit kategorijas_url
    assert_selector "h1", text: "Kategorijas"
  end

  test "should create kategorija" do
    visit kategorijas_url
    click_on "New kategorija"

    fill_in "Apraksts", with: @kategorija.apraksts
    fill_in "Nosaukums", with: @kategorija.nosaukums
    click_on "Create Kategorija"

    assert_text "Kategorija was successfully created"
    click_on "Back"
  end

  test "should update Kategorija" do
    visit kategorija_url(@kategorija)
    click_on "Edit this kategorija", match: :first

    fill_in "Apraksts", with: @kategorija.apraksts
    fill_in "Nosaukums", with: @kategorija.nosaukums
    click_on "Update Kategorija"

    assert_text "Kategorija was successfully updated"
    click_on "Back"
  end

  test "should destroy Kategorija" do
    visit kategorija_url(@kategorija)
    click_on "Destroy this kategorija", match: :first

    assert_text "Kategorija was successfully destroyed"
  end
end
