require "test_helper"

class TypeContactsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_contact = type_contacts(:one)
  end

  test "should get index" do
    get type_contacts_url, as: :json
    assert_response :success
  end

  test "should create type_contact" do
    assert_difference("TypeContact.count") do
      post type_contacts_url, params: { type_contact: { description: @type_contact.description } }, as: :json
    end

    assert_response :created
  end

  test "should show type_contact" do
    get type_contact_url(@type_contact), as: :json
    assert_response :success
  end

  test "should update type_contact" do
    patch type_contact_url(@type_contact), params: { type_contact: { description: @type_contact.description } }, as: :json
    assert_response :success
  end

  test "should destroy type_contact" do
    assert_difference("TypeContact.count", -1) do
      delete type_contact_url(@type_contact), as: :json
    end

    assert_response :no_content
  end
end
