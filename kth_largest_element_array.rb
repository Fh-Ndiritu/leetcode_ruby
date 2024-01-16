# @param {Integer[]} nums
# @param {Integer} k
# @return {Integer}
def find_kth_largest(nums, k)

    def min_heap(nums)
        heap = [nil]
        nums.each do |num|
            heap << num 

            if heap.size > 2 
                i = heap.size-1
                while heap[i] < heap[i/2]
                    if (i >= 1)
                        parent = heap[i/2]
                        heap[i/2] = heap[i]
                        heap[i] = parent
                        if i/2 > 1
                            i = i/2 
                        else
                            break
                        end
                    end

                end
            elsif heap.size == 2
                return heap.delete_at(1)
            else 
                return heap
            end
        end

        return heap
    end

    def max_heap(nums)
        heap = [nil]
        nums.each do |num|
            heap << num 

            if heap.size > 2 
                i = heap.size-1 
                while heap[i] > heap[i/2]
                    if (i >= 1)
                        parent = heap[i/2]
                        heap[i/2] = heap[i]
                        heap[i] = parent 
                        if i/2 > 1
                            i = i/2 
                        else
                            break
                        end
                    end

                end
            end
        end
            return heap
    end

    def remove(heap)
        largest = heap[1]
        if heap.size > 2 
            heap[1] = heap[-1]
            heap.pop()

            if heap.size == 3
                heap[1], heap[2] = heap[2], heap[1] if heap[1] < heap[2]
            end
            return heap if heap.size <=3

            i = 1 
            left = i*2 
            right = i*2 + 1

            while heap[i] <= heap[left] || heap[i] <= heap[right]
                if heap[left] > heap[right]
                    heap[i], heap[left] = heap[left], heap[i]
                    i = left 
                else 
                    heap[i], heap[right] = heap[right], heap[i]
                    i = right
                end

                left = i*2
                right = i*2 + 1

               break if heap[left].nil? || heap[right].nil?
            end
        end

        return heap

    end

    heap = max_heap(nums)

    (k-1).times{heap= remove(heap)}
    return heap[1]

end




p find_kth_largest([3,2,1,5,6,4], 2)
puts find_kth_largest([3,2,3,1,2,4,5,5,6], 4)  # Expected output: 4
p find_kth_largest([7,6,5,4,3,2,1], 5)