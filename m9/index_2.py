data = str(input("Please type a sentence: "))
def Check_Vow(string, vowels): 
    final = [each for each in data if each in vowels] 
    print(len(final))

vowels = "AaEeIiOoUu"
Check_Vow(data, vowels); 