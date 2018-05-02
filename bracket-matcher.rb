# create a bracket matcher. Determine whether there is a legal match for each bracket. Assume there are no other characters


def cypher
   {
  "[" => "]",
  "(" => ")",
  "{" => "}"
  }
end

# require 'pry'; binding.pry

def match(string)
  answer = ''
  verify_matches = {}
  brackets = string.split('')

  # First check - is the whole thing odd?
  return true if brackets.length.even?

  # Next check - do all the characters have matches?
  # require 'pry'; binding.pry
  brackets.each do |char|
    (!verify_matches[char]) ? verify_matches[char] = 1 :  verify_matches[char] += 1
    # contents[id.to_s] = (contents[id.to_s] || 0) + 1
  end

  return true if verify_matches["["] == verify_matches["]"]
  return true if verify_matches["{"] == verify_matches["}"]
  return true if verify_matches["("] == verify_matches[")"]



  brackets.each_with_index do |element, i|
    #also need to create a hash that counts the occurance of each kind to check at the very end.

      #Round 1 - if the bracket has a match, note it and move on to next round. if not...
    if brackets.include?(cypher[element])
      #Round 2 - does the matcher have an even number or 0 chars between it and its next match?
      closer = brackets.index(cypher[element]) # returns first match
      # now count between the i and closer, or  just check that 1 is even and 1 is odd
      if (i.odd? && closer.even?) || (i.even? && closer.odd?)
        #Round 3 check for even # of specific bracket kinds...maybe that should be step 1? and check that there aren't 2{{ and 4 }}}}
        answer = "true"
        return answer
      else
        answer = "false"
        return answer
      end

    else
      answer = "false"
      return answer
    end
  end
  answer
end



puts match("[()]")
puts "should match 'true'"
puts match("[(()]")
puts "should match 'false'"
puts match("[(()}]") # not working
puts "should match 'false'"
puts match("[{}(()}]") # not working
puts "should match 'false'"
puts match("[{}(({)}]")
puts "should match 'false'"
