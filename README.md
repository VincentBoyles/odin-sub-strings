# Substrings Counter (Ruby)

This is a Ruby method that takes a **string** and a **dictionary array**, then counts how many times each dictionary word appears as a **substring** within the string. It’s a great exercise in string manipulation, loops, and hashes.

---

## 🧠 What It Does

- Converts the input string to lowercase and splits it into words.
- Iterates over each dictionary word.
- For each dictionary word, it checks if it is a substring of any word in the input string.
- Returns a hash where keys are matched words and values are the number of occurrences.

---

## 📎 Example

```ruby
dictionary = ["cat", "dog", "bird"]
substrings("The dog chased the cat and the bird watched.", dictionary)
# => { "cat" => 1, "dog" => 1, "bird" => 1 }
```

```ruby
substrings("Catdogcat CATDOG", ["cat", "dog"])
# => { "cat" => 3, "dog" => 2 }
```

---

## 🧾 Code

```ruby
def substrings(word, dictionary)
  word = word.downcase
  word = word.split(" ")
  times = dictionary.reduce(Hash.new(0)) do |result, vote|
    word.each do |item|
      if item.include?(vote)
        result[vote] += 1
      end
    end
    result 
  end
  return times
end
```

---

## 🔍 Concepts Practiced

- String preprocessing (`downcase`, `split`)
- Substring checking with `include?`
- Using `.reduce` to accumulate results in a hash
- Word frequency analysis

---

## 💡 Educational Purpose

This method is part of early Ruby exercises and it helps beginners practice:

- Iterating over arrays
- Working with hashes
- Handling string casing and substring logic

---

## 📄 License

This code is shared **for educational purposes only**.

You are free to use and modify it for learning, practice, or academic work.  
Please do not redistribute or use in commercial software without proper attribution.

---

Created as a string-manipulation practice project in Ruby 🧵🔍💎
