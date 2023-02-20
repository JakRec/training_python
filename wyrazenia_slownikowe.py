lista = ["Ania", "Bania", "kotek", "Alek", "siakimaki"]
numbers = [1, 2, 3, 4, 5, 6, 7, 8]
jedzonko = {1 : "siakimaki", 2 : "czipsy", 3 : "pomidor", 4 : "banan"}

list = {
    imie : "obecny" 
    for imie in lista
}

jedzenie_slownik = {
    key : wartosc
    for key, wartosc in jedzonko.items()
    if key > 2
}

lista_komplet = {
    numer : imie 
    for imie in lista
    for numer in numbers
}

mnozenie = {
    numer : numer * numer 
    for numer in range(2,31)
    if (numer * numer) < 500
}