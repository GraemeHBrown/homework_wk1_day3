# Homework

# A. Given the following data structure:


stops = [ "Croy", "Cumbernauld", "Falkirk High", "Linlithgow", "Livingston", "Haymarket" ]


# 1. Add `"Edinburgh Waverley"` to the end of the array

stops.push("Edinburgh Waverley")

# 2. Add `"Glasgow Queen St"` to the start of the array
stops.unshift("Glasgow Queen St")

# 3. Add `"Polmont"` at the appropriate point (between `"Falkirk High"` and `"Linlithgow"`)
stops.insert(4, "Polmont")

# 4. Work out the index position of `"Linlithgow"`
 p "Index of Linlithgow: #{stops.index('Linlithgow')}"

# 5. Remove `"Livingston"` from the array using its name
stops.delete("Livingston")

# 6. Delete `"Cumbernauld"` from the array by index
stops.delete_at(stops.index("Cumbernauld"))

# 7. How many stops there are in the array?
p "There are #{stops.length()} stops in the array"

# 8. How many ways can we return `"Falkirk High"` from the array?
index_to_select = stops.index('Falkirk High')
p stops[index_to_select] # a simple way
p stops.select { |stop| stop == "Falkirk High"} # returns array with match
p stops.fetch(index_to_select) # another way
#there are probably other ways as well...


# 9. Reverse the positions of the stops in the array
p stops.reverse! #which changes the order in the array rather than creating a new copy

# 10. Print out all the stops using a for loop
for stop in stops
  p stop
end


## B. Given the following data structure:

  users = {
    "Jonathan" => {
      :twitter => "jonnyt",
      :favourite_numbers => [12, 42, 75, 12, 5],
      :home_town => "Stirling",
      :pets => {
        "fluffy" => :cat,
        "fido" => :dog,
        "spike" => :dog
      }
    },
    "Erik" => {
      :twitter => "eriksf",
      :favourite_numbers => [8, 12, 24],
      :home_town => "Linlithgow",
      :pets => {
        "nemo" => :fish,
        "kevin" => :fish,
        "spike" => :dog,
        "rupert" => :parrot
      }
    },
    "Avril" => {
      :twitter => "bridgpally",
      :favourite_numbers => [12, 14, 85, 88],
      :home_town => "Dunbar",
      :pets => {
        "colin" => :snake
      }
    },
    "Graeme" => {
      :twitter => nil,
      :favourite_numbers => [2,12,24],
      :home_town => "Perth",
      :pets => {
        "n/a" => nil
      }
    }
  }

# 1. Get Jonathan's Twitter handle (i.e. the string `"jonnyt"`)
p "Jonathan's Twitter handle: #{ users["Jonathan"][:twitter]}"

# 2. Get Erik's hometown
p "Erik's hometown: #{users["Erik"][:home_town]}"

# 3. Get the array of Erik's favourite numbers
eriks_fav_numbers = users["Erik"][:favourite_numbers]
p "An array of Erik's favourite numbers: #{eriks_fav_numbers}"

# 4. Get the type of Avril's pet Colin
p "Type of Avril's pet Colin: #{users["Avril"][:pets]["colin"]}"

# 5. Get the smallest of Erik's favourite numbers
p "The smallest of Erik's favourite numbers: #{users["Erik"][:favourite_numbers].min}"

# 6. Add the number `7` to Erik's favourite numbers
eriks_fav_numbers.map! {|number| number +=7 }
p "Erik's favourite numbers with 7 added: #{eriks_fav_numbers}"

# 7. Change Erik's hometown to Edinburgh
users["Erik"][:home_town]="Edinburgh"
p "Erik's new home town: #{users["Erik"][:home_town]}"

# 8. Add a pet dog to Erik called "Fluffy"
users["Erik"][:pets]["Fluffy"]=:dog
p "Erik's new pet added:#{users["Erik"][:pets]}"

# 9. Add yourself to the users hash
p "Added myself to users hash: #{users["Graeme"]}"                            


## C. Given the following data structure:


united_kingdom = [
  {
    name: "Scotland",
    population: 5295000,
    capital: "Edinburgh"
  }, {
    name: "Wales",
    population: 3063000,
    capital: "Swansea"
  }, {
    name: "England",
    population: 53010000,
    capital: "London"
  }
]


# 1. Change the capital of Wales from `"Swansea"` to `"Cardiff"`.
for country in united_kingdom
  if country[:name]=="Wales"
    country[:capital]="Cardiff"
    p "Capital changed to: #{country[:capital]}"
  end
end

# 2. Create a Hash for Northern Ireland and add it to the `united_kingdom` array (The capital is Belfast, and the population is 1,811,000).
united_kingdom.push({  name: "Northern Ireland", population: 1811000, capital: "Belfast"})
for country in united_kingdom
  if country[:name]=="Northern Ireland"
    p "Added: #{country[:name]} with population of: #{country[:population]} and capital of: #{country[:capital]}"
  end
end
# 3. Use a loop to print the names of all the countries in the UK.
for country in united_kingdom
  p "Country name: #{country[:name]}"
end

# 4. Use a loop to find the total population of the UK.
total_population = 0
for country in united_kingdom
  total_population += country[:population]
end
p "Total population of UK: #{total_population}"
