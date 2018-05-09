require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test
  def test_translator_exists
    translator = Translator.new

    assert_instance_of Translator, translator
  end

  def test_eng_to_morse
    translator = Translator.new

    actual     = translator.eng_to_morse("hello world")
    expected   = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual
  end

  def test_case_sensitive_with_numbers
    translator = Translator.new

    actual     = translator.eng_to_morse("Hello World")
    expected   = "......-...-..--- .-----.-..-..-.."
    assert_equal expected, actual

    actual     = translator.eng_to_morse("There are 3 ships")
    expected   = "-......-.. .-.-.. ...-- ..........--...."
    assert_equal expected, actual
  end

  def test_translate_file
    translator = Translator.new

    actual     = translator.from_file("input.txt")
    expected   = ".. .-..---...-. .--.---.-.-.-.--"
    assert_equal expected, actual
  end
end
