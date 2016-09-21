curl --include --request POST http://localhost:3000/books \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Example Title",
      "author": "Example Author",
      "newStuff": "Will you see me?"
    }
  }'

curl --include --request PATCH http://localhost:3000/books/4 \
  --header "Content-Type: application/json" \
  --data '{
    "book": {
      "title": "Of Staggering Genius",
      "author": "Lauren"
    }
  }'

curl --include --request DELETE http://localhost:3000/books/4 \
  --header "Content-Type: application/json"
