#!/bin/bash
#
curl -X GET http://localhost:5000/
curl -X GET http://localhost:5000/api/termine
curl -X POST -H "Content-Type: application/json" -d '{"salutation":"Mister","firstname":"John", "lastname":"Doe", "appointment" : "2023-06-23T14:25"}' http://localhost:5000/api/termin
