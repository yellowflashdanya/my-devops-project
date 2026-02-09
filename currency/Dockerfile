FROM golang:1.24-alpine AS builder

WORKDIR /app

COPY currency/go.mod currency/go.sum ./

RUN go mod download

COPY currency/ .

RUN CGO_ENABLED=0 GOOS=linux go build -o currency .

# Final stage

FROM alpine:latest AS final

WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY --from=builder /app/currency .

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 9092

CMD ["./currency"]