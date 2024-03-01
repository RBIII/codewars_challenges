def determinant(matrix)
    if matrix.length == 1
        return matrix[0][0]
    elsif matrix.length == 2
        return matrix[0][0] * matrix[1][1] - matrix[0][1] * matrix[1][0]
    else
        result = 0
        matrix[0].each_with_index do |element, index|
            result += element * cofactor(matrix, 0, index)
        end
        return result
    end

end

def cofactor(matrix, row, col)
    return (-1) ** (row + col) * minor(matrix, row, col)
end

def minor(matrix, row, col)
    return determinant(matrix.select.with_index { |_, i| i != row }.map { |row| row.select.with_index { |_, i| i != col } })
end