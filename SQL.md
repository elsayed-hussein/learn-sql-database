to create a database .

```sql
CREATE DATABASE databaseName;
```

to show databases .

```sql
SHOW DATABASES;
```

to create a comment .

```sql
 -- this is a comment
```

to create a table .

```sql
CREATE TABLE tableName(
   columnOneName DATATYPE PRIMARY KEY AUTO_INCREMENT,
   columnTwoName DATATYPE
   );
```

PRIMARY KEY -- make this column the identifiable by this value .
AUTO_INCREMENT -- make that value auto increment by it self .
NOT NULL -- this column can't be empty .
UNIQUE -- this column value must be unique .

to insert data into table .

```sql
INSERT INTO tableName(
   columnOneName ,
   columnTwoName
)VALUES(
columnOneValue,
columnTwoValue
);
```

to select data from table .

```sql
SELECT whatYouNeed
FROM tableName
WHERE columnName = "Value"
AND columnName = "Value" LIKE "pattern"
OR columnName = "Value"
ORDER BY columnName ASC
LIMIT 2;
```

- -- will get all value from the table .
  WHERE -- filter rows with logic .
  AND -- add more filter with logic .
  OR -- add more filter with logic .
  LIKE -- add pattern to the logic .
  ORDER BY -- will sort the results .
  LIMIT -- will get only the number off rows that you want .

to create index .

```sql
CREATE INDEX indexName ON tableName(columnName);
```

to create foreign key .

```sql
FOREIGN KEY (columnName) REFERENCES otherTableName(columnName);
```

to join select from two tables .

```sql
 INNER JOIN tableName ON tableName.columnName = otherTableName.columnName;
```

```sql
 LEFT JOIN tableName ON tableName.columnName = otherTableName.columnName;
```

```sql
 RIGHT JOIN tableName ON tableName.columnName = otherTableName.columnName;
```

```sql
 OUTER JOIN tableName ON tableName.columnName = otherTableName.columnName;
```

to rename or alias columnName

```sql
columnName AS alias;
```

to delete table .

```sql
DROP TABLE tableName;
```

to delete database .

```sql
DROP DATABASE databaseName;
```
