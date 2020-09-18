def even_fibonacci_sum(limit)
    final = 0
    last = 1
    penultimate = 2
    result = [2]
    while (last <= limit) && (penultimate <= limit) do
        if last > penultimate
            penultimate = last + penultimate
        else
            last = last + penultimate
        end
        if (last <= limit) && (penultimate <= limit)
            if penultimate % 2 == 0
                result << penultimate
            end
            if last % 2 == 0
                result << last
            end
        end
    end
    result = result.uniq
    return result.sum
end