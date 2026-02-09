FROM golang:1.24-alpine AS builder

WORKDIR /app

COPY . .

WORKDIR /app/product-api

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o product-api .

# Final stage

FROM alpine:latest AS final

WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY --from=builder /app/product-api/product-api .

RUN chown -R appuser:appgroup /app

USER appuser

ENV CURRENCY_ADDRESS=currency:9092

EXPOSE 9090

CMD ["./product-api"]