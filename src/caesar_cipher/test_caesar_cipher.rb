require_relative "encrypt"
require_relative "decrypt"
require "minitest/autorun"

class TestCeaserCipher < Minitest::Test
  def test_encrypt_with_only_chars
    assert_equal("efg", encrypt("abc", 4))
  end

  def test_decrypt_with_only_chars
    encrypted_message = encrypt("abc", 4)
    assert_equal("abc", decrypt(encrypted_message, 4))
  end

  def test_encrypt_with_capitalized
    assert_equal("eFg", encrypt("aBc", 4))
  end

  def test_decrypt_with_capitalized
    encrypted_message = encrypt("AbC", 4)
    assert_equal("AbC", decrypt(encrypted_message, 4))
  end

  def test_encrypt_with_alphanumeric
    assert_equal("eFg38", encrypt("aBc38", 4))
  end

  def test_decrypt_with_alphanumeric
    encrypted_message = encrypt("AbC53", 4)
    assert_equal("AbC53", decrypt(encrypted_message, 4))
  end

  def test_encrypt_with_non_alphanumeric
    assert_equal("Bmfy f xywnsl!", encrypt("What a string!", 5))
  end

  def test_decrypt_with_non_alphanumeric
    encrypted_message = encrypt("What a string!", 5)
    assert_equal("What a string!", decrypt(encrypted_message, 5))
  end
end
