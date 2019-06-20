# // Suppose a hash representing a directory. All keys are strings with names for either folders or files.
# // Keys that are folders point to nested hashes. Keys that are files point to "true".
# // Write a function that takes such a hash and returns an array of strings with the path to each file in the hash.
#
# //Method Signature
# //file_list(hash h)
#
# // {"folder1": {"folder2": {"folder3": {"file":true}}}}
# {"folder1":
  # {"folder2":
  #   {"folder3":
  #     {"file":true}},
  #     "folder4":
  #     {"file":true}}}
# // ArrayList<String> answer = new ArrayList<String>();
# [folder1, folder2, folder3]
#
# String key = file_list(..)

def file_list(h)
  answer = []
  h.each do |key, val|
    if val.is_a?(Hash)
      folder = key
      name = file_list(val)
      name.each { |file| answer << "#{folder}/#{file}" }
    else
      answer << key
    end
  end
  answer
end


p file_list({'a' => {'b' => true}})
