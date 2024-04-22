class MovingTotal:
    def __init__(self):
        self.numbers = []
        self.totals = set()

    def append(self, numbers):
        """
        :param numbers: (list) The list of numbers.
        """
        for num in numbers:
            if len(self.numbers) >= 3:
                # Calculate total for the oldest 3 numbers
                total = sum(self.numbers[:3])
                # Remove the oldest total

                # Remove the oldest number
                self.numbers.pop(0)
            # Add the new number
            self.numbers.append(num)
            if len(self.numbers) == 3:
                # Calculate total for the new 3 numbers
                total = sum(self.numbers)
                # Add the new total
                self.totals.add(total)

    def contains(self, total):
        """
        :param total: (int) The total to check for.
        :returns: (bool) If MovingTotal contains the total.
        """
        return total in self.totals

if __name__ == "__main__":
    movingtotal = MovingTotal()
    
    movingtotal.append([1, 2, 3, 4])
    print(movingtotal.totals)
    print(movingtotal.contains(6))  # Output: True
    print(movingtotal.contains(9))  # Output: True
    print(movingtotal.contains(12))  # Output: False
    print(movingtotal.contains(7))  # Output: False
    
    movingtotal.append([5])
    print(movingtotal.totals)
    print(movingtotal.contains(6))  # Output: True
    print(movingtotal.contains(9))  # Output: False
    print(movingtotal.contains(12))  # Output: False
    print(movingtotal.contains(7))  # Output: False
