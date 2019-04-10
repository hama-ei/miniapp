# DB設計

## usersテーブル

|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|encrypted_password|string|null: false|
|reset_password_token|string|
|reset_password_sent_at|datetime|
|remember_created_at|datetime|
|created_at|timestamp|null: false|
|updated_at|timestamp|null: false|

### Association
- has_many :tweets

## tweetsテーブル

|Column|Type|Options|
|------|----|-------|
|body|text|
|image|string|
|user_id|integer|
|created_at|timestamp|null: false|

### Association
- belongs_to :user
