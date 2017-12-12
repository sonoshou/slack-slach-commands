# sinatraでslackのSlash Commandsと連携する。

## インストール

```
bundle install --path vendor/bundle
```

## my_account.rbの編集

- 環境に合わせたToken情報を入力して下さい。
  - Let's Encryptを使用しているため、
    ACME_CHALLENGEのTOKENも記載できるようになっています。
  - 不要な方は削除して下さい。
