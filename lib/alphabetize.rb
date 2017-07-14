def alphabetize(arr)
  # code here
first_array = []
count = 0
sort_array = []
final_array = []
alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
alpharay = alphabet.each_char.to_a


arr.each do |name|
first_array << name[count]
end
first_array.each do |letter|
  sort_array << alpharay.index(letter)
end


while sort_array.uniq != sort_array
loop_array = []
sort_array = []
    count += 1
arr.each do |word|
  loop_array << word[count]
end
loop_array.each do |letter|
  sort_array << alpharay.index(letter)
end
##binding.pry
end

hash_alpha = Hash.new(0)
count2 = 0
while count2 < arr.size
hash_alpha = hash_alpha.merge(arr[count2] => sort_array[count2])
count2 += 1
end



hash_alpha = hash_alpha.sort_by {|key, value| value}
hash_alpha.each do |name, number|
  final_array << name
end


final_array
##binding.pry
end
