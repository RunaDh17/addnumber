#Input: a string of comma-separated numbers ( string as the argument 
# eg ruby addnumber.rb "##5*14(7"
#Output: an integer, sum of the numbers
#multiple delimiter length greater than 1 char and different delimiter taken care
#many numbers present in the string can be added

num_string="1@#59#2" #ARGV[0]
num_pos=[] # to store all positive numbers in the string

prev=""
current=""
num=""
#iteration over the each character of string
num_string.chars.each  do |c|
    current=c
    if current.match(/\d/)
      if prev.match(/\d/)     # multidigit number is taken care
         num=num+current   
      else
        num=current         #temporary digits holder
      end
    else
      if num!="" and num.to_i > 0
         num_pos<< num.to_i
      end
      num=""   #reset to blank when character is found
      
    end
    prev=current
end

puts num_pos.sum.to_s  #ruby >2.4

#puts num_pos.inject(0, :+).to_s  # ruby <2.4

