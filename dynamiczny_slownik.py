lista_definicji = {"banan":"zolty owoc", "jablko":"okragly owoc"}
polecenie = "koza"
while polecenie != 0:
    polecenie = int(input("co chcesz zrobic? 1 - dodaj nowa definicje, 2 - zmodyfikuj istniejaca definicje, 3 - usun istniejaca definicje, 4 - odszukaj istniejaca definicje, 5 - podaj liste kluczy definicji, 0 - przerwanie programu "))
    if polecenie == 1:
        nowy_identyfikator_dodanie = input("podaj identyfikator definicji:")
        nowa_definicja_dodanie = input("podaj definicje:")
        print("chcesz dodac definicje o identyfikatorze:", nowy_identyfikator_dodanie)
        print("tresc definicji:", nowa_definicja_dodanie)
        print("czy chcesz dodac taka definicje?, T - tak, N - nie")
        potwierdzenie = input()

        if potwierdzenie == "T":
            lista_definicji.update({nowy_identyfikator_dodanie:nowa_definicja_dodanie})
            print(lista_definicji)
        else:
            print("definicja nie zostala dodana")
           
    elif polecenie == 2:
        #modyfikacja
        ident_szukanie = input("ktora definicje chcesz poprawic, wpisz identyfikator")

    elif polecenie == 3:
        print("ktora definicje chcesz usunac, wpisz identyfikator, dostepne to:")
        print(lista_definicji.keys())
        ident_szukanie = input()
        if ident_szukanie in lista_definicji.keys():
            print("czy chcesz usunac definicje o identyfikatorze:", ident_szukanie)
            potwierdzenie_kasowania = input("T- tak, N - nie")
            if potwierdzenie_kasowania == "T":
                lista_definicji.pop(ident_szukanie)
            else:
                print("przerwano operacje kasowania")
        else:
            print("wybranej definicji nie ma w bazie, przerwano")

    elif polecenie == 4:
        print("funkcja szukania, podaj identyfikator definicji do odszukania: ")
        ident_szukanie = input()
        if ident_szukanie in lista_definicji.keys():
            print("definicja o takim identyfikatorze istnieje, jej zawartosc to: ")
            print(lista_definicji.get(ident_szukanie))
        else:
            print("brak identyfikatora w bazie")   

    elif polecenie == 5:
        print(lista_definicji.keys())
        print("czy pokazac tresc jakiegos konkretnego klucza?")
        decyzja = input()
        if decyzja == "T":
            print("jakiego?")
            pokaz_wartosc_klucza = input()
            if pokaz_wartosc_klucza in lista_definicji.keys():
                print(lista_definicji.get(pokaz_wartosc_klucza))
            else:
                print(" brak klucza w bazie")
        
else:
    print("bye")