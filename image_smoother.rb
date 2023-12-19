# @param {Integer[][]} img
# @return {Integer[][]}
# https://leetcode.com/problems/image-smoother/solutions/4424659/fast-readable-o-r-c-solution-explained-in-ruby/
def image_smoother(img)
    cols_idx = img[0].size-1
    row_idx = img.size-1

    smoothed = []
    i = 0 
    while i <= row_idx 
        row = img[i]
        smoothed << []

        j = 0 
        while j <= cols_idx
            row_start = i < 1 ? 0 : i-1
            row_end  = i == row_idx ? row_idx : i+1

            col_start = j < 1 ? 0 : j-1 
            col_end  = j == cols_idx ? cols_idx : j+1

            matrix = img[row_start..row_end].map{|row|  row[col_start..col_end].sum }
            smoothed[-1] << matrix.sum/((row_end-row_start+1)*(col_end-col_start+1))
            
            j += 1
        end

        i += 1
    end


    smoothed
end


p image_smoother([
    [1,1,1],
    [1,0,1],
    [1,1,1]
])

p image_smoother([[100,200,100],[200,50,200],[100,200,100]])