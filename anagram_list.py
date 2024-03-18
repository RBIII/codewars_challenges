def group_anagrams(words):
    anagram_list = []
    letter_counts = {}
    already_included = set()
    next_word = 1

    for word in words:
        letter_counts[word] = {}
        
        for letter in list(word):
            if letter in letter_counts[word]:
                letter_counts[word][letter] += 1
            else:
                letter_counts[word][letter] = 1

    for word in letter_counts:
        if word in already_included:
            next_word += 1
            continue

        anagrams = {word}

        for index in range(next_word, len(letter_counts) - 1):
            possible_anagram = list(letter_counts)[index]

            if letter_counts[word] == letter_counts[possible_anagram]:
                anagrams.add(possible_anagram)
                already_included.add(possible_anagram)
                
            index += 1

        anagram_list.append(anagrams)
    
    return anagram_list
