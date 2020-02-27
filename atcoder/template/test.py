import unittest
from main import main

class TestMain(unittest.TestCase):
	def test_main(self):
		input_test_data = open('input.txt', 'r')
		ipt = input_test_data.read()
		input_test_data.close()
		output_test_data = open('output.txt', 'r')
		opt = output_test_data.read()
		output_test_data.close()

		result = main(ipt)
		self.assertEqual(result, opt)