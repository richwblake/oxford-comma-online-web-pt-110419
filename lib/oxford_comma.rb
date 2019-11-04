def oxford_comma(array)
  formatted_string = String.new
  if array.size == 1
    formatted_string << array[0]
  elsif array.size == 2
    formatted_string = array.join( " and " )
  else
    array.each_with_index { |word, index| 
      index == array.size - 1 ? formatted_string << ", and #{word}" : formatted_string << "#{word}, "
    }
  end
  formatted_string
end