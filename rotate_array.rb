def rotate(nums, k)
    nums.rotate!(-k)
end


p rotate([1,2,3,4,5,6,7], 3)
p rotate([-1,-100,3,99], 2)