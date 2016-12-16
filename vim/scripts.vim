if index(["", "text"], &filetype) > -1
  for line in getline(1, "$")
    if line == "!"
      setfiletype cisco
      break
    endif
  endfor
endif
