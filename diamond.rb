=begin
Write your code for the 'Diamond' exercise in this file. Make the tests in
`diamond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/diamond` directory.
=end
class Diamond
  def self.make_diamond(letter)
    # return for a only
    return "A\n" if letter == 'A'
    # get array of all used letters
    letters = ("A"..letter).to_a
    back_half = letters[0..-2].reverse
    # get a string formatted like each line with appropriate char numbers
    letters_together = (letters += back_half[0..-1]).join
    # create top half of diamond
    diamond = letters.map {|letter| letters_together.gsub(/[^#{letter}]/, ' ') + "\n"}.join
    # create bottom half and combine
  end
end