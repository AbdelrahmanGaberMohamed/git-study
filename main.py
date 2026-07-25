def main(): 
    print("hello world!")
    return 0
#main change
main()
while True:
    choice = int(input("Choose: "))
    match choice:
        case 1: print("Welcome"); continue
        case 2: print("Exit"); break
        case default: print("Invalid input"); continue