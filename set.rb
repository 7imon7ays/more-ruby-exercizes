def set_add_el(hash, key)
  hash[key] = true
  hash
end

def set_remove_el(hash, key)
  hash.delete(key)
  hash
end

def set_list_els(hash)
  hash.keys
end

def set_member?(hash, key)
  hash.keys.include?(key)
end

def set_union(hash1, hash2)
  hash1.merge(hash2)
end

def set_intersection(hash1, hash2)
  answer = {}
  hash1.each do |key, value|
    answer[key] = value if hash2.keys.include?(key)
  end
  answer
end

def set_minus(hash1, hash2)
  answer = {}
  hash1.each do |key, value|
    answer[key] = value unless hash2.keys.include?(key)
  end
  answer
end


hash1 = {:x => true}
hash2 = {:x => true, :y => true}

p set_minus(hash2, hash1)