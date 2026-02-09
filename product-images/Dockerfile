FROM golang:1.24-alpine AS builder

WORKDIR /app

COPY . .

WORKDIR /app/product-images

RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o product-images .

# Final stage

FROM alpine:latest AS final

WORKDIR /app

RUN addgroup -S appgroup && adduser -S appuser -G appgroup

COPY --from=builder /app/product-images/product-images .

RUN mkdir ./imagestore

RUN chown -R appuser:appgroup /app

USER appuser

EXPOSE 9091

CMD ["./product-images"]