FROM gcc:13

WORKDIR /app

COPY . .

RUN g++ -std=c++17 -O2 main.cpp -o db -pthread

EXPOSE 8080

CMD ["./db"]