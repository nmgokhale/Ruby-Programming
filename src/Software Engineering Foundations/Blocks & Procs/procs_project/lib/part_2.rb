def reverser(str, &prc)
    prc.call(str.reverse)
end

def word_changer(sentence, &prc)
    words = sentence.split(" ")
    processed_words = []
    words.each do |word|
        processed_words << prc.call(word)
    end
    processed_words.join(" ")
end

def greater_proc_value(num, proc_1, proc_2)
    proc_1.call(num) > proc_2.call(num) ? proc_1.call(num) : proc_2.call(num)
end

def and_selector(array, proc_1, proc_2)
    selected = []
    array.each do |el|
        if proc_1.call(el) == true && proc_2.call(el) == true
            selected << el
        end
    end
    selected
end

def alternating_mapper(array, proc_1, proc_2)
    mapped = []
    array.each_with_index do |el, idx|
        if idx.even?
            mapped << proc_1.call(el)
        else
            mapped << proc_2.call(el)
        end
    end
    mapped
end