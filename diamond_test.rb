require 'minitest/autorun'
require_relative 'diamond'

class DiamondTest < Minitest::Test
  def test_letter_a
    skip
    answer = Diamond.make_diamond('A')
    assert_equal "A\n", answer
  end

  def test_add_letter
    skip
    expected = "B B"
    actual = Diamond.add_letter("B")
    assert_equal expected, actual

    expected_2 = "C   C"
    actual_2 = Diamond.add_letter("C")
    assert_equal expected_2, actual_2
  end

  def test_add_spaces_and_newline
    skip
    expected = " B B \n"
    input_string = "B B"
    input_length = 5
    answer       = Diamond.add_spaces_and_newline(input_string, input_length)
    assert_equal answer, expected
  end

  def test_letter_c
    answer = Diamond.make_diamond('C')
    string = "  A  \n"\
             " B B \n"\
             "C   C\n"\
             " B B \n"\
             "  A  \n"
    assert_equal string, answer
  end

  def test_letter_e
    skip
    answer = Diamond.make_diamond('E')
    string = "    A    \n"\
             "   B B   \n"\
             "  C   C  \n"\
             " D     D \n"\
             "E       E\n"\
             " D     D \n"\
             "  C   C  \n"\
             "   B B   \n"\
             "    A    \n"
    assert_equal string, answer
  end
end
