Bank details fetch
===================
REST API service that can provide:
1. Give a bank branch IFSC code, get branch details
2. Give a bank name and city, gets details of all branches of the bank in the city

Postman link for above two APIs - 
```bash
https://www.getpostman.com/collections/f928eb10ab7dac53a150
```
Demi link- 
```bash
https://enigmatic-meadow-29636.herokuapp.com/
```
Clone fyle:
```bash
git clone https://github.com/anubhav253/fyle
```

Database which is to be created and then make a table consists of:
```bash
CREATE TABLE branches (
    ifsc character varying(11) NOT NULL,
    bank_id bigint,
    branch character varying(74),
    address character varying(195),
    city character varying(50),
    district character varying(50),
    state character varying(26),
    name character varying(49)
);
```
Install requirements using:
```bash
pip install .
```
Config file should be create for database access:
```bash
{
	"dbCred": {
		"host": "localhost",
		"user": "root",
		"passwd": "",
		"db": "name"
	}
}
```
