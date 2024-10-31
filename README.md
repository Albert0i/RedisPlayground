# RedisPlayground

```
+-----------+     1     +-------------+
| Addresses |-----------|  Families   |
+-----------+           +-------------+
| family_id | PK        | family_id   | PK
| street    |           | family_name |
| city      |           | total_income|
| state     |           | rent        |
| zip_code  |           | family_size |
+-----------+           +-------------+
                             |     | 
                             | 1   | 0
                             |     +-------------+   
                             | M                 | M
                       +-------------+      +-----------+
                       |  Members    |      |   Pets    |
                       +-------------+      +-----------+
                       | family_id   | PK   | family_id | FK
                       | member_id   | FK   | pet_id    | PK
                       | name        |      | pet_type  |
                       | gender      |      | pet_name  |
                       | relationship|      +-----------+
                       | profession  |
                       | birthday    |
                       | income      |
                       | hobbies     |
                       +-------------+
```
