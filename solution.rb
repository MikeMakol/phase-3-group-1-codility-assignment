def solution(arr)

    multiple_of_four = arr.filter do |num|
        if num % 4 == 0 
            num
        end
    end
    max_num = multiple_of_four.max
end

pp solution([-6, -91, 1011, -100, 84, -22, 0, 1, 473])