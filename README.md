<h1 align=center> Docker_lab5 </h1>

## Treść pliku Dockerfile
![image](https://github.com/MRCNWJCK/Docker_lab5/assets/106474992/f611d781-e62d-4732-9400-1249defc508a)

## Budowa obrazu
Użyte polecenie: ``` $ docker build --build-arg VERSION=4.2.0 -t lab5-image . ``` <br>

Wynik działania: <br>
![image](https://github.com/MRCNWJCK/Docker_lab5/assets/106474992/d5645ea4-77d8-4b5d-afc0-b92f17bf6678)

## Polecenie uruchamiające serwer
Użyte polecenie: ``` $ docker run -d -p 666:8080 --name lab5-container lab5-image ``` <br>

Wynik działania: <br>
![image](https://github.com/MRCNWJCK/Docker_lab5/assets/106474992/86cd140f-90da-4be8-903b-c68d20629a40)

## Polecenie potwierdzające działanie kontenera i poprawne funkcjonowanie opracowanej aplikacji
Użyte polecenie: ``` $ docker ps ``` <br>

Wynik działania: <br>
![image](https://github.com/MRCNWJCK/Docker_lab5/assets/106474992/38840dec-e83c-4ff2-b3e3-62ab72dce6a6)

## Realizacja wymaganej funkcjonalności
### Polecenie "curl"
Użyte polecenie: ``` $ curl localhost:666 ``` <br>

Wynik działania: <br>
![image](https://github.com/MRCNWJCK/Docker_lab5/assets/106474992/53640f6b-d94a-4645-b7a5-785c89a753ea)
##
### Widok w przeglądarce:
![image](https://github.com/MRCNWJCK/Docker_lab5/assets/106474992/8898b4bd-1757-4d09-8c00-d5713dd1c9d7)

