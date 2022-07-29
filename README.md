# README

This is an API that allows users to request to create, update and view customer tea subscriptions.

## Schema
![Screen Shot 2022-07-29 at 10 05 52 AM](https://user-images.githubusercontent.com/92329376/181777857-3e08546b-e59d-41b0-b405-ae2ea190e497.png)

## Endpoints

### Subscriptions
- POST /api/v1/customers/subscriptions
- GET /api/v1/customers/subscriptions
- PATCH  /api/v1/customers/subscriptions/:subscription_id

##### `POST /api/v1/customers/subscriptions`
##### Example Body Content:
```json
{
    "customer_id":1,
    "title": "pink tea",
    "frequency": "weekly",
    "status": "active",
    "price": 50.0
}
```
##### Example Response:
```json
{
    "data": {
        "id": "8",
        "type": "subscription",
        "attributes": {
            "title": "pink tea",
            "price": 50.0,
            "status": "active",
            "frequency": "weekly"
        }
    }
}
```

##### `PATCH  /api/v1/customers/subscriptions/:subscription_id`
##### Example Body Content:
```json
{
    "status": "cancelled"
}
```
##### Example Response:
```json
{
    "data": {
        "id": "8",
        "type": "subscription",
        "attributes": {
            "title": "yellow tea",
            "price": 50.0,
            "status": "cancelled",
            "frequency": "weekly"
        }
    }
}
```
##### `GET /api/v1/customers/subscriptions`
##### Example Body Content:
```json
{
    "customer_id": "1"
}
```
##### Example Response:
```json
{
    "data": [
        {
            "id": "1",
            "type": "subscription",
            "attributes": {
                "title": "Green tea",
                "price": 5.0,
                "status": "cancelled",
                "frequency": "weekly"
            }
        },
        {
            "id": "2",
            "type": "subscription",
            "attributes": {
                "title": "Black tea",
                "price": 6.0,
                "status": "cancelled",
                "frequency": "weekly"
            }
        },
        {
            "id": "6",
            "type": "subscription",
            "attributes": {
                "title": "pink tea",
                "price": 50.0,
                "status": "active",
                "frequency": "weekly"
            }
        },
        {
            "id": "8",
            "type": "subscription",
            "attributes": {
                "title": "yellow tea",
                "price": 50.0,
                "status": "active",
                "frequency": "weekly"
            }
        }
    ]
}
```
## Setup

Clone down this repo and ensure that you have Ruby 2.7.4 installed on your computer.

CD into this directory and run `bundle install`.

This will make sure all of the dependencies are installed.


Next run, `rails db:{create,migrate,seed}` . This will create and run the migrations on our database.
