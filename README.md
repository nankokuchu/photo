# README

## users
|column    |type     |option      |
|----------|---------|------------|
|email     |string   |null: false |
|password  |string   |null: false |
|name      |sting    |null: false |
|profile   |text     |null: false |
|occupation|text     |null: false |
|position  |text     |null: false |
##association
-has_many :prototypes
-has_many :comments


## prototypes
|column    |type       |option           |
|----------|-----------|-----------------|
|title     |string     |null: false      |
|catch_copy|text       |null: false      |
|concept   |text       |null: false      |
|image     |active storage               |
|user_id   |references |foreign_key: true|

### association
-has_many :comments
-belongs_to :user


## comments
|column       |type       |option            |
|-------------|-----------|------------------|
|text         |text       |null: false       |
|user_id      |references |foreign_key: true |
|prototypes   |references |foreign_key: true |

### association
-belongs_to :prototypes
-belongs_to :user