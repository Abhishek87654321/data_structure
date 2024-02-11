# Method to compress a string by replacing consecutive repeating characters with their count.
# For example, "aaabcddee" becomes "a3b1c1d2e2"
def compress_string(str)
    # Using regular expression to find consecutive repeating characters and replace them
    compressed_string = str.gsub(/(.)\1*/) { |match| "#{match[0]}#{match.length}" }
    return compressed_string
  end
  
  # Original string
  original_string = "aaabcddee"
  
  # Compress the original string
  compressed_string = compress_string(original_string)
  
  # Print the compressed string
  p compressed_string  # Output: "a3b1c1d2e2"
  
