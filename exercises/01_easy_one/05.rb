def decrypt_rot13(encrypted_string)
  encrypted_string.chars.map do |char|
    if ("A".."Z").include?(char)
      ((char.ord - 65 + 13) % 26 + 65).chr
    elsif ("a".."z").include?(char)
      ((char.ord - 97 + 13) % 26 + 97).chr
    else
      char
    end
  end.join
end

puts decrypt_rot13('Nqn Ybirynpr')
puts decrypt_rot13('Tenpr Ubccre')
puts decrypt_rot13('Nqryr Tbyqfgvar')
puts decrypt_rot13('Nyna Ghevat')
puts decrypt_rot13('Puneyrf Onoontr')
puts decrypt_rot13('Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv')
puts decrypt_rot13('Wbua Ngnanfbss')
puts decrypt_rot13('Ybvf Unvog')
puts decrypt_rot13('Pynhqr Funaaba')
puts decrypt_rot13('Fgrir Wbof')
puts decrypt_rot13('Ovyy Tngrf')
puts decrypt_rot13('Gvz Orearef-Yrr')
puts decrypt_rot13('Fgrir Jbmavnx')
puts decrypt_rot13('Xbaenq Mhfr')
puts decrypt_rot13('Fve Nagbal Ubner')
puts decrypt_rot13('Zneiva Zvafxl')
puts decrypt_rot13('Lhxvuveb Zngfhzbgb')
puts decrypt_rot13('Unllvz Fybavzfxv')
puts decrypt_rot13('Tregehqr Oynapu')