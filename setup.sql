INSTALL ducklake;
INSTALL postgres;

LOAD ducklake;
LOAD postgres;

CREATE OR REPLACE SECRET ( TYPE postgres, HOST '127.0.0.1', PORT 5432, DATABASE ducklake, USER 'duck', PASSWORD 'postgres' );

CREATE OR REPLACE SECRET minio_local_secret ( TYPE s3, PROVIDER config, KEY_ID 'ducklake', SECRET 'minioadmin', REGION 'local', ENDPOINT '127.0.0.1:9000', URL_STYLE 'path', USE_SSL false );

ATTACH 'ducklake:postgres:dbname=ducklake' AS example_ducklake(DATA_PATH 's3://ducklake');

use example_ducklake;

