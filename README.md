# ローカルに Prowler 実行環境を構築する

## Prowler とは

```
Prowler is an Open Source security tool to perform AWS and Azure security best practices assessments, audits, incident response, continuous monitoring, hardening and forensics readiness.
It contains hundreds of controls covering CIS, PCI-DSS, ISO27001, GDPR, HIPAA, FFIEC, SOC2, AWS FTR, ENS and custom security frameworks.
```
Ref: https://github.com/prowler-cloud/prowler

## リポジトリのファイル構成

Makefile: リポジトリをクローン後のコマンド。  
config: クラウドサービスへ接続情報の設定ファイル。コンテナ内にコピーして使う。

## 作業手順

1. 当リポジトリをクローンする
2. クラウドサービスに構成の参照権限をもつユーザーを作り、接続情報を発行する
3. config/ に接続情報を追加する
4. Prowler を実行する (コンテナを起動して、クラウドサービスの構成を監査する)
5. output/ に監査結果が出力されるので、html ファイルを web ブラウザで開く

## 備考

Makefile のコマンドで実行した場合、コンテナは終了したら破棄するオプションをつけて起動しています。
