# simple_itunes_notifier
iTunesで聞いてる曲をslackに投げるやつ

## Usage
1. `secret.conf` にSlackのwebhookで使うトークンを書く
  例:
  ```secret.conf
token=xxxx/xxxx/XXXXXXXXXX
  ```

2. 実行
  ```
$ ./now_listening.sh
  ```
