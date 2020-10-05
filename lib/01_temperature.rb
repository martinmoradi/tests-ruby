
def ftoc(temp_f)
  (temp_f - 32).to_f * 5 / 9 
end


def ctof(temp_c)
  temp_c.to_f * 9 / 5 + 32 
end