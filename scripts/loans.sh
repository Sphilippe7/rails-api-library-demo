#Create
curl --include --request POST http://localhost:3000/loans \
  --header "Content-Type: application/json" \
  --data '{
    "loan": {
      "start_date": "2016-09-25"
      "end_date": "2016-10-01",
      "book_id": 3,
      "borrower_id": 2
    }
  }'

#Update
curl --include --request PATCH http://localhost:3000/loans/2 \
  --header "Content-Type: application/json" \
  --data '{
    "loan": {
      "end_date": "2016-10-01",
      "book_id": 2,
      "borrower_id": 2
    }
  }'

#Get
curl --include --request PATCH http://localhost:3000/loans \
  --header "Content-Type: application/json" \

#show
curl --include --request PATCH http://localhost:3000/loans/3 \
  --header "Content-Type: application/json" \

#delete

curl --include --request DELETE http://localhost:3000/loans/2 \
  --header "Content-Type: application/json" \
