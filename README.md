# README

# アプリ名: EverydayApp


## 概要
### 糖尿病患者さんが食事や血糖値、運動などを記録するためのアプリ
  - 画像付きで食事内容を記録
  - 記録した食事がカレンダーで表示され、過去の食事記録を振り返ることができる
  - 運動したことを記録
  - 記録した運動について達成度によって表示を変えてカレンダーに表示される
  - 血糖値の記録
  - 記録した血糖値がグラフ化され、振り返ることができる

## 制作背景
看護学生時の実習で糖尿病の患者さんを受け持った時、日常生活においての制限や自己管理がかなり大変であることを感じました。
また、入院中よりも退院後の自己管理の維持の方がより大変かつ重要であると学び、糖尿病患者さんの特に退院後の自己管理をサポートするためのアプリケーションを作成しました。
毎日記録することで、自己管理の意識の向上と維持ができる、また記録した食事内容や血糖値などを通院時に医師が患者さんの状況を把握することができるのではないかと考えました。

## 工夫したこと
生活習慣病である糖尿病患者さんは高齢者や現役で働いている方が多いため、見やすいようにデザインをシンプルに、そしてスキマ時間に簡単に記録できるように実装しました。

## DEMO
### 下記のURLからアプリケーションのキャプチャをご覧いただけます。
- 食事記録ページ
https://i.gyazo.com/a37c5e4455fd2ed6930d1fe503cdc9ff.png
- 運動記録ページ
https://i.gyazo.com/e833437ca916a7f4666effc1a10597e1.png
- 血糖値記録ページ
https://i.gyazo.com/66277e3a6d5163fca183151d4563644a.png
## 実装予定の内容
- GoogleのAPI 画像解析を使って食事の画像のカロリー、栄養素表示
- 非同期通信を使った記録の詳細表示
- 運動記録同様な機能で服薬の管理機能を追加、また飲み忘れ防止のため、服薬したことを記録されていない場合は通知させる

## DB設計

### foodsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string|
|start_time|datetime|null: false｜

### measuresテーブル
|Column|Type|Options|
|------|----|-------|
|measure|integer|null: false|

### exercisesテーブル
|Column|Type|Options|
|------|----|-------|
|menu|string|null: false|
|amount|string|null: false|
|memo|string|
|start_time|datetime|null: false|
