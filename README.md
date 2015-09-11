# ETPRSELF(SelfBI Redshiftロード機能)
## 概要
1. [ETPRFOUT](http://google.com/ "")で出力されたExaテーブルデータを
[file2s3](http://google.com/ "")を使ってS3にアップロードする  
 => [bin/ec2/etprself_s3_to_redshift.sh]( "")

2. s3にアップロードされたファイルを各事業のSelfBI Redshiftクラスタへロードする  
 => [bin/ec2/etprself_s3_to_redshift.sh]( "")
# 全体JOBイメージ
