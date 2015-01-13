# Riemann Postgresql Query
[![Gitter](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/stuartquin/riemann-postgresql-query?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

[![Gem Version](https://badge.fury.io/rb/riemann-postgresql-query.svg)](http://badge.fury.io/rb/riemann-postgresql-query)

A simple postgresql riemann client based on https://github.com/riemann/riemann-postgresql
Runs a query on postgres and emits the result to riemann. 

__Queries should return a single row of numeric values.__

## Installation

```bash
gem install riemann-postgresql-query
```

## Usage

```bash
riemann-postgresql-query --postgresql-database "test" --postgresql-username "admin" --query "SELECT MAX(price), MIN(stock) FROM products LIMIT 1;" --service "products-table"
```

Will result in the following events:

```
{:host=>"localhost",
 :service=>"pi-pages-table-price",
 :metric=>700.0,
 :state=>"ok",
 :description=>"SELECT MAX(price) as price, MIN(stock) FROM pages;",
 :tags=>["postgresql"]}
{:host=>"localhost",
 :service=>"pi-pages-table-min",
 :metric=>1.0,
 :state=>"ok",
 :description=>"SELECT MAX(price) as price, MIN(stock) FROM pages;",
 :tags=>["postgresql"]}
```
