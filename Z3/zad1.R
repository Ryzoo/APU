#Zadanie1
install.packages("neuralnet")
library("neuralnet")
argument <-as.data.frame(runif(100, min = 1, max = 2*3.14))
wynik_funkcji <- cos(argument) &sin(argument)
argument
wynik_funkcji
dane_treningowe <-data.frame( na.omit(cbind(argument, wynik_funkcji)))
colnames(dane_treningowe) <- c("Argument", "Wynik_funkcji")
net.price <- neuralnet(Wynik_funkcji~Argument, dane_treningowe, hidden = c(3, 2), threshold = 0.01)
plot(net.price)
