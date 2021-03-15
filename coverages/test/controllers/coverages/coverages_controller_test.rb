require 'test_helper'

module Coverages
  class CoveragesControllerTest < ActionDispatch::IntegrationTest
    include Engine.routes.url_helpers

    setup do
      @coverage = coverages_coverages(:one)
    end

    test "should get index" do
      get coverages_url
      assert_response :success
    end

    test "should get new" do
      get new_coverage_url
      assert_response :success
    end

    test "should create coverage" do
      assert_difference('Coverage.count') do
        post coverages_url, params: { coverage: { title: @coverage.title } }
      end

      assert_redirected_to coverage_url(Coverage.last)
    end

    test "should show coverage" do
      get coverage_url(@coverage)
      assert_response :success
    end

    test "should get edit" do
      get edit_coverage_url(@coverage)
      assert_response :success
    end

    test "should update coverage" do
      patch coverage_url(@coverage), params: { coverage: { title: @coverage.title } }
      assert_redirected_to coverage_url(@coverage)
    end

    test "should destroy coverage" do
      assert_difference('Coverage.count', -1) do
        delete coverage_url(@coverage)
      end

      assert_redirected_to coverages_url
    end
  end
end
