# sinatraでslackのSlash Commandsと連携する。

## インストール

```
bundle install --path vendor/bundle
```

## my_account.rbの編集

```
vim my_account.rb
```

以下が参考記述例

```
class MyAccount
  SLACK_API_TOKEN = '' # Token情報を入力
  ACME_CHALLENGE_TOKEN = ''
end
```

- 環境に合わせたToken情報を入力して下さい。
  - Let's Encryptを使用しているため、
    ACME_CHALLENGEのTOKENも記載できるようになっています。
  - 不要な方は削除して下さい。
