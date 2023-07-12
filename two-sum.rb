# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
    new_arr = []
    nums.each_with_index do |number, index|
        if new_arr[target - number]
            return [new_arr[target - number], index]
        else
            new_arr[number] = index
        end
    end
end

pp two_sum([2,7,11,15], 9)
pp two_sum([3,2,4], 6)
pp two_sum([3,3], 6)