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

def add_friend(person, friend)
  person[:friends] << friend
end

def remove_friend(person, friend)
  person[:friends].delete(friend)
end

def total_money(people)
  total = 0
  for person in people
    total += person[:monies]
  end
  return total
end

def lend(lender, lendee, amount)

  lender_money_before = lender[:monies]

  lender_money_after = lender[:monies] - amount

  lendee_money_before = lendee[:monies]

  lendee_money_after = lendee[:monies] + amount

  if lender_money_before != lender_money_after && lendee_money_before != lendee_money_after
    return true
  end
  return false
end


def favourite_food(people)
  total = []
  for person in people
      total += person[:favourites][:snacks]
  end
return total
end

def no_friends(people)
  people_no_friends = []
  for person in people
    if person[:friends] == []
      people_no_friends << person[:name]
    end
  end
  return people_no_friends
end
