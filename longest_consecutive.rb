require 'set'
# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
    num_set = nums.to_set
    longest = 0

    num_set.each do |num|
        #Check if it is the start of sequence
        if !num_set.include? (num - 1)
            current_num = num
            current_streak = 1
            while num_set.include? (current_num + 1)
                current_num += 1
                current_streak += 1
            end
            longest = [longest, current_streak].max
        end
            
    end
    longest
end

pp longest_consecutive([100,4,200,1,3,2])
pp longest_consecutive([0,3,7,2,5,8,4,6,0,1])