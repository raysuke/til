require 'minitest/autorun'
require './lib/convert_length'

class ConvertLengthTest < Minitest::Test
	def test_convert_length
		assert_equal 39.37, convert_length(1, from: :m, to: :in)
		assert_equal 1, convert_length(39.37, from: :in, to: :m)
		assert_equal 10670.73, convert_length(35000, from: :ft, to: :m)
	end
end