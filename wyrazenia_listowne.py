import sys

lista = [1, 2, 3, 4, 5, 6, 7]

"""
# [co_zrobic_na_elemencie skad_element jak_wybrac_element]
lista2 = [element**2 
          for element in range(150)]
lista3 = [element
          for element in lista2
          if (element % 2 == 1)
          ]
"""
lista2 = [element
          for element in range(40000)
          if (element % 2 == 1)
          ]

lista3 = (element
          for element in range(101)
          if (element % 2 == 1)
          )       
lista4 = [element ** 2 for element in lista3]


print(sys.getsizeof(lista2))
print(sys.getsizeof(lista3))
sum(lista4)
#print(lista)
print(lista3)
print(lista4)