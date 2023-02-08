02/06/23
    SW Team mtg.  Help Pat.  aggregate building energy consumption by time GQL query

-------------------------------------------------------------------------------------------------------------------------

01/30/23
    PTO - driving to pdx.  SW team meeting.  Look into CA certificate expiration for CRDB Serverless.

01/26/23
    work with Pat on Lambda env, use his x86 - compiled pscyopg2 library; finish env & test

01/25/23
    troubleshoot Lambda env:  build postgres and awslambda-psycopg2 packages from source with SSL support
    for inclusion in lambda layer.

01/24/23
    compile psycopg2 dependencies for Linux before  inclusion into Lambda Layer;

01/23/23
    Begin work on Lambda environment to include the psycopg2 library, a PostgreSQL adapter,
    for interaction between IoT and CRDB.

-------------------------------------------------------------------------------------------------------------------------

01/19/23
    finish up occupancy sensors; document their configuration.
    Study issue of possible UI representations for occupancy data.
    Re-publish decoded packet data from Lambda for consumption by other services.
    add SecretsManager with permissions, access secrets in Lambda

01/18/23
    more testing of Milesight occupancy sensors

01/17/23
    connect, test occupancy sensors

01/16/23
    MLK Holiday

-------------------------------------------------------------------------------------------------------------------------

01/12/23
    refactor Milesight Lambda to locally subscribe to IoT messages;
    Setup & test Milesight occupancy sensors.

01/11/23
    UBX demo meeting
    thingify Mac at saas-devel
    IoT meeting with Pat
    Milesight device + NFC app for device initialization

01/10/23
    pick up Milesight sensors in Mosier and Hood River, connect to lorawan, provision them on AWS IoT

01/09/23
    bring frontend energy pro report up to date with new branch on port-pages, energy-report-v2;
    test with up-to-date sbp-mono branch.

-------------------------------------------------------------------------------------------------------------------------

01/05/23
    work with new branch sbp-mono for energypro, update, test

01/04/23
    AWS SDK

01/03/23
    Review & merge PR for sbp-mono energyrpo; configure AWS CLI & test usage; test AWS SDK

-------------------------------------------------------------------------------------------------------------------------
12/21/22
    incorporate newly provisioned Milesight devices' fields for decoding in Lambda.  watch Cloudwatch logs.  query Lakehouse.

12/20/22
    work on a unified decoder that decodes all fields from all Milesight devices in our inventory

12/19/22
    proofread, re-write, integrate new MS sensor decoders into  IoT  + Lambda.  S3 Lifecycle .

-------------------------------------------------------------------------------------------------------------------------

12/07/22
    CRDB refresh; stored procedures?; new release notes

12/06/22
    Milesight docs; plan the Lambdas & snowpipe of Milesight devices arriving this week; snowsql, copy into VARIANT
    for snowpipe definition.

12/05/22
    re-clone standalone-dev-env, run ./setup.sh, branch off py3-develop, add energypro queries,  
    re-factor for new directory structure since 1st writing the queries, test. 
    Milesight docs  
