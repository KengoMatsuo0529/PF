# <アプリ名：Health Link>
![Health_link](https://user-images.githubusercontent.com/73770617/111096717-809e4c80-8583-11eb-8e15-facda3309218.jpg)

## 概要

「繋がり合って、助け合う」

保健所、ユーザーと病院間のコミュニケーションを円滑にすることで、双方の工数削減・時間的負担の軽減を目的としたサービスです。

## URL

http://54.248.169.153/
ゲストログインや新規登録はHOME画面のヘッダーからお願い致します。

## 制作の背景
保健所からの連絡を待っている人数が200人を超える地域もあり、
連絡がつかないまま亡くなってしまうというニュースも見かけるようになりました。
保健所から陽性者・濃厚接触者への電話でのヒヤリングは平均45分かかっているそうです。
病院から保健所に送られる発生届は手書き且つFAXを用いて送信を行っております。
保健所で働く人の中には過労死レベルの残業を毎月している方も多く、
このような課題をITの力で解決したいと考えました。

人員不足、アナログ運用で工数が多い、情報の一元化ができていない、という課題が挙げられますが、
今回は国民と保健所のやりとりをチャットとフォーム送信で行うことで簡略化、
病院から送られる発生届はフォームをもって送信できることで情報の一元化、
保健所と国民、検査所どちらも工数削減・時間的負担の削減を目指しこのアプリを考えました。

## 主な利用シーン

【保健所側】
ユーザーとリアルタイムでやりとりしたいとき
ユーザーの情報をいち早く収集したいとき

【個人側】
保健所とすぐに連絡が取りたいとき
時間をかけずに自分の状況を伝えたいとき

【病院側】
保健所への検査結果の共有をスピーディにしたいとき
検査結果を一元管理したいとき

## 機能一覧

・チャット機能
　やりとりを迅速に行うことを目的としたアプリなので、
　チャットはActionCableを用いて実装致しました。

・通知機能
　未読のメッセージがあればヘッダーにマーク
　メッセージを見たタイミングで通知が消えるよう実装しました。

・検索機能
　ユーザーは自分が住んでいる市区町村を入れることで対応した保健所が
　保健所は名前をカナ検索か電話番号でユーザーが
　検査所はユーザーと保健所の検索が可能になっております。
　
・感情分析のAPI
　個人から送られてくる健康状態の文言を分析し、
　保健所側から見るデータに緊急度を表示するようるように実装しました。

・多言語化
　今回はあらゆるユーザーを想定し、個人が利用する全ページで多言語を実装しました。
　URLの末尾に/en を入れることで英語に変換できます。

・レスポンシブデザイン
　こちらも幅広いユーザーを想定し実装致しました。

<img width="250" src="https://user-images.githubusercontent.com/73770617/111098628-3f0fa080-8587-11eb-9b3d-d89eb462bc96.png">　<img width="250" src="https://user-images.githubusercontent.com/73770617/111097004-091ced00-8584-11eb-8d6e-31b0bdc7e317.png">　<img width="250" src="https://user-images.githubusercontent.com/73770617/111097128-47b2a780-8584-11eb-857f-250d8cd370a8.png">


詳細は下記をご覧ください

https://docs.google.com/spreadsheets/d/1vQ8D_Ov_WJ1GSslXB0YgrPfecqP0SI0HKlC1Fzvx0b4/edit#gid=0

## 環境・使用技術

フロントエンド
・Bootstrap 4.5.0
・JavaScript、jQuery

バックエンド
・Ruby 2.5.7
・Rails 5.2.4.3

開発環境
・Cloud9

本番環境
AWS (EC2、RDS for MySQL、S3)
MySQL2
Nginx、
Puma

その他利用技術
チーム開発を意識したGitHubの活用 （プルリク、マージ）

※今回、個人情報保護の観点からセキュリティが万全とは言えない為、実際の個人データを取り扱うことはございません。
