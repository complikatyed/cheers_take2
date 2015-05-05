require_relative 'helper'

class TestCheersIntegration <Minitest::Test


  def test_name_help_message
    output = `./cheers`
    expected = <<EOS
I'd cheer for you, if only I knew who you are :(
Try again with `./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end


  def test_valid_name_no_birthday
    output = `./cheers Eliza`
    expected = <<EOS
Give me an... E
Give me an... L
Give me an... I
Give me a... Z
Give me an... A
Eliza’s just GRAND!

EOS
    assert_equal expected, output
  end


  def test_valid_name_invalid_birthday
    output = `./cheers Eliza 30/05`
    expected = <<EOS
Give me an... E
Give me an... L
Give me an... I
Give me a... Z
Give me an... A
Eliza’s just GRAND!

I would also wish you a Happy Birthday if I knew when it was.
EOS
    assert_equal expected, output
  end


  def test_invalid_name_only
    output = `./cheers *#?@ `
    expected = <<EOS
I'd cheer for you, if only I knew who you are :(
Try again with `./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end


  def test_invalid_name_valid_birthday
    output = `./cheers *#?@ 08/25`
    expected = <<EOS
I'd cheer for you, if only I knew who you are :(
Try again with `./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end


  def test_two_valid_arguments
    output = `./cheers Eliza 08/25`
    expected = <<EOS
Give me an... E
Give me an... L
Give me an... I
Give me a... Z
Give me an... A
Eliza’s just GRAND!

Awesome!  Your birthday is 112 days away!  Happy Birthday in advance!
EOS
    assert_equal expected, output
  end


  def test_two_invalid_args
    output = `./cheers 12345 25/08 `
    expected = <<EOS
I'd cheer for you, if only I knew who you are :(
Try again with `./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_empty_string_
    output = `./cheers "" `
    expected = <<EOS
I'd cheer for you, if only I knew who you are :(
Try again with `./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end

  def test_empty_string_
    output = `./cheers "" `
    expected = <<EOS
I'd cheer for you, if only I knew who you are :(
Try again with `./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end


  def test_name_with_hyphen_and_valid_birthday
    output = `./cheers Mary-Ann 08/25`
    expected = <<EOS
Give me an... M
Give me an... A
Give me an... R
Give me a... Y
Give me an... A
Give me an... N
Give me an... N
Mary-Ann’s just GRAND!

Awesome!  Your birthday is 112 days away!  Happy Birthday in advance!
EOS
    assert_equal expected, output
  end


  def test_empty_string_
    output = `./cheers "  " `
    expected = <<EOS
I'd cheer for you, if only I knew who you are :(
Try again with `./cheers [Name] [MM/DD Birthday]
EOS
    assert_equal expected, output
  end



end
