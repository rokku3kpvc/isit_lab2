require 'test_helper'

class NerNetworkControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ner_network_index_url
    assert_response :success
  end

  test "should get new" do
    get ner_network_new_url
    assert_response :success
  end

  test "should get create" do
    get ner_network_create_url
    assert_response :success
  end

end
