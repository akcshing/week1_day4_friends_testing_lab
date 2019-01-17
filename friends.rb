def get_name(person)
  return person[:name]
end

def tv_show(person)
  return person[:favourites][:tv_show]
end

def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    end
  end
  return false
end
