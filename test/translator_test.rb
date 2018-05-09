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
end
