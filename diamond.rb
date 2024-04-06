=begin
Write your code for the 'Diamond' exercise in this file. Make the tests in
`diamond_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/diamond` directory.
=end
class Diamond
  @@value_hash = {
    A: [0, nil],
    B: [1, "A"],
    C: [2, "B"],
    D: [3, "C"],
    E: [4, "D"]
  }
  @@result = []
  def self.make_diamond(letter)
  # if it's a just return "A\n"
  return "A\n" if letter == "A"
  value_hash[letter][0] = num
  string_length = (num +(2*num)-3)

  end

  def self.construct_chunk(letter, string_length)
    # only prepend if letter !nil
    # string += (' ' * string_length)
    # only call the new one if the new letter isn't A
    letters_added = add_letter(letter)
    # use the string_length to know the number of spaces
    finished_string = add_spaces_and_newline(letters_added, string_length)
    # throw a \n on the end
    construct_chunk(@@value_hash[letter][1], string_length)
  end

  def self.add_letter(letter)
    # if it's just A, add one A
    letter_to_sym = letter.to_sym
    if letter == "A"
      return 'A'
    # else, make a string with 2*letter_index -1 spaces and then two letters
    else 
      string = ''
      num_spaces = (( 2*@@value_hash[letter_to_sym][0] )-1)
      string.insert(0, (' ' * num_spaces))
      string.insert(0, letter)
      string.insert(-1, letter)
    end
    # return that string
  end

  def self.add_spaces_and_newline(letters_added, string_length)
    # add spaces to the front and back
    string_dif_halved = (string_length - letters_added.length) % 2
    rjusted = letters_added.rjust(string_dif_halved, ' ')
    # add newline to the end
    rjusted.ljust(string_dif_halved, ' ') + "\n"
  end
end