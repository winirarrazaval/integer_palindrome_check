require 'minitest/autorun'
require 'minitest/reporters'
require_relative '../lib/integer_palindrome_check'

describe "integer palindrome check" do
  describe "basic tests" do
    describe "test 1" do
      it "palindrome input with even digit count" do
        is_palindrome(1001).must_equal true
      end
    end

    describe "test 2" do
      it "palindrome input with odd digit count" do
        is_palindrome(1234321).must_equal true
      end
    end

    describe "test 3" do
      it "not a palindrome" do
        is_palindrome(1728371).must_equal false
      end
    end
  end

  # if the parameter is an object, check for nil
  describe "nil object input test" do
    it "nil object is not an integer" do
      is_palindrome(nil).must_equal false
    end
  end

  # check for edge cases
  describe "edge cases" do
    describe "edge case 1" do
      it "single digit palindrome" do
        is_palindrome(9).must_equal true
      end
    end

    describe "edge case 2" do
      it "double digit palindrome" do
        is_palindrome(77).must_equal true
      end
    end

    describe "edge case 3" do
      it "negative number" do
        is_palindrome(-44).must_equal false
      end
    end

    describe "edge case 4" do
      it "zero" do
        is_palindrome(0).must_equal true
      end
    end
  end
end
