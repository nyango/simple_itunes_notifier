# simple_itunes_notifier
iTunesで聞いてる曲をslackに投げるやつ

http://qiita.com/ayasuda/items/3773858e5e93ba94da48 における
> 標準出力に、再生中の曲が表示されたのがわかるかと思いますので、あとは slackcat するなり、直接 curl あたりで post するなり自由にできます。

の直接curlでpostしているもの。

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

## 備考
本当に最低限の実装ですので、 https://github.com/uiureo/playing 等用いたほうが幸せになれると思います。
