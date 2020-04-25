# README

# アプリ名: HealthSupport


## 概要
- 糖尿病患者さんが食事や血糖値、運動などを記録するためのアプリ
  - 画像付きで食事内容を記録
  - 記録した食事がカレンダーで表示され、過去の食事記録を振り返ることができる
  - 血糖値の記録
  - 記録した血糖値がグラフ化され、振り返ることができる

## 制作背景
看護学生時の実習で糖尿病の患者さんを受け持った時、日常生活においての制限や自己管理がかなり大変であることを感じました。
また、入院中よりも退院後の自己管理の維持の方がより大変かつ重要であると学び、糖尿病患者さんの特に退院後の自己管理をサポートするためのアプリケーションを作成しました。
毎日記録することで、自己管理の意識の向上と維持ができる、また記録した食事内容や血糖値などを通院時に医師が患者さんの状況を把握することができるのではないかと考えました。

## 工夫したこと
生活習慣病である糖尿病患者さんは高齢者や現役で働いている方が多いため、見やすいようにデザインをシンプルに、そしてスキマ時間に簡単に記録できるように実装しました。

## DEMO(gifで動画や写真を貼って、ビューのイメージを掴んでもらいます)

## 実装予定の内容

## DB設計

### foodsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|image|string||

#### Association
- belongs_to :user
- belongs_to :group