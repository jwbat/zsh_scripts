#! /bin/zsh

clear;

echo "
 $aqua 04/10/23 $green
    Meeting on agg current query.  Work on agg current query.

 $aqua 04/10/23 $green
    SW Team mtg.  Work on fixing the s-d-e environment

--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------

 $aqua 03/16/23 $green
    scripts to obtain energy device related uuid's from CRDB

 $aqua 03/15/23 $green
    work on understanding new infrastructure; building current aggregation query

 $aqua 03/14/23 $green
    study the new infrastructure: CRDB & gql queries.
    artificially generate parallel time series for building wide current to temporarily
    fill in for lack of hotdrop data in ubx_device_data

 $aqua 03/13/23 $green
    setup new standalone env, install arm64 version of crdb binary for ubuntu,
    & populate personal crdb cluster; study the new gql queries.
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
 $aqua 03/09/23 $green
    Create a Snowpipe to auto-ingest csv object files from the S3 bucket 'ubx-device-to-snowflake'
    to the ventacity.ubx.UBX_DEVICE_DATA table.

 $aqua 03/08/23 $green
    Query updates for energy pro.  UI components for energy pro

 $aqua 03/07/23 $green
    Meet with Pat on snowpipe creation. Bugfix in aggEnergyByTime query. Troubleshoot login issue.
    Update queries in energy pro to enable better handling of fetches of no data in the UI.

 $aqua 03/06/23 $green
    weekly SW team meeting.  setup s-d-e with AuthO.  Building Energy Report components

"
exit 0
-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------

 $aqua 03/02/23 $green
    AWS CloudFormation for WebViewer Server deployment. due to issue of the Apryse CF template only geared for deployment
    to EC2, we're pausing this part of the project for now.  Discuss Retool project.

 $aqua 03/01/23 $green
    WebViewer Server.  Energy pro discussion with Terra & Jonah

 $aqua 02/28/23 $green
    Monthly all-company mtg.  Discussion on naming conventions in GQl.  WebViewer Server eval.

 $aqua 02/27/23 $green
    SW Team mtg. pdf linearizations & PDFTron speedtests.  Docker + WebViewer Server evaluation

-------------------------------------------------------------------------------------------------------------------------

 $aqua 02/23/23 $green
    PDF linearization, speed-testing, troubleshooting.  WebViewer Server, Docker, Fargate study

 $aqua 02/22/23 $green
    Apryse docs.  Linearization of PDFs using the Apryse SDK.  python script with pikepdf lib

 $aqua 02/21/23 $green
    Git study.  Discuss next projects: Apryse / PDFTron pdf linearization.

 $aqua 02/20/23 $green
    Presidents Day


#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------

echo " 
$aqua 02/16/23 $green
    consult with Jonah on features & style of aggregate enery chart; finish chart; Git study

$aqua 02/15/23 $green
    (same as 14th)

$aqua 02/14/23 $green
    Highcharts stacked column chart Vue component for building aggregate energy

$aqua 02/13/23 $green
    SW Team mtg.
    update GQL in aggregate energy query with a simpler, better SQL statement, other refactoring;
    look at luxon library docs & try out their datetime object methods

$aqua 02/09/23 $green
    discussion on Adam's updated Building Energy Report & comments
    update aggregate energy query to be able return a total energy consumed from start date to end date.
    Look into the API for stacked bar charts in Highcharts

$aqua 02/08/23 $green
    minor refactoring in building aggregate energy query
    make a flow diagram for energy query;  meeting with Jonah: energy pro

$aqua 02/07/23 $green
    aggregate building energy consumption query 

$aqua 02/06/23 $green
    SW Team mtg.  Assist Pat in AWS IoT.  aggregate building energy consumption GQL query

-------------------------------------------------------------------------------------------------------------------------

$aqua 01/30/23 $green
    PTO - driving to pdx.  SW team meeting.  Look into CA certificate expiration for CRDB Serverless.

$aqua 01/26/23 $green
    work with Pat on Lambda env, use his x86 - compiled pscyopg2 library; finish env & test

$aqua 01/25/23 $green
    troubleshoot Lambda env:  build postgres and awslambda-psycopg2 packages from source with SSL support
    for inclusion in lambda layer.

$aqua 01/24/23 $green
    compile psycopg2 dependencies for Linux before  inclusion into Lambda Layer;

$aqua 01/23/23 $green
    Begin work on Lambda environment to include the psycopg2 library, a PostgreSQL adapter,
    for interaction between IoT and CRDB.

-------------------------------------------------------------------------------------------------------------------------

$aqua 01/19/23 $green
    finish up occupancy sensors; document their configuration.
    Study issue of possible UI representations for occupancy data.
    Re-publish decoded packet data from Lambda for consumption by other services.
    add SecretsManager with permissions, access secrets in Lambda

$aqua 01/18/23 $green
    more testing of Milesight occupancy sensors

$aqua 01/17/23 $green
    connect, test occupancy sensors

$aqua 01/16/23 $green
    MLK Holiday

-------------------------------------------------------------------------------------------------------------------------

$aqua 01/12/23 $green
    refactor Milesight Lambda to locally subscribe to IoT messages;
    Setup & test Milesight occupancy sensors.

$aqua 01/11/23 $green
    UBX demo meeting
    thingify Mac at saas-devel
    IoT meeting with Pat
    Milesight device + NFC app for device initialization

$aqua 01/10/23 $green
    pick up Milesight sensors in Mosier and Hood River, connect to lorawan, provision them on AWS IoT

$aqua 01/09/23 $green
    bring frontend energy pro report up to date with new branch on port-pages, energy-report-v2;
    test with up-to-date sbp-mono branch.

-------------------------------------------------------------------------------------------------------------------------

$aqua 01/05/23 $green
    work with new branch sbp-mono for energypro, update, test

$aqua 01/04/23 $green
    AWS SDK

$aqua 01/03/23 $green
    Review & merge PR for sbp-mono energyrpo; configure AWS CLI & test usage; test AWS SDK

-------------------------------------------------------------------------------------------------------------------------

$aqua 12/21/22 $green
    incorporate newly provisioned Milesight devices' fields for decoding in Lambda.  watch Cloudwatch logs.  query Lakehouse.

$aqua 12/20/22 $green
    work on a unified decoder that decodes all fields from all Milesight devices in our inventory

$aqua 12/19/22 $green
    proofread, re-write, integrate new MS sensor decoders into  IoT  + Lambda.  S3 Lifecycle .

-------------------------------------------------------------------------------------------------------------------------

$aqua 12/07/22 $green
    CRDB refresh; stored procedures?; new release notes

$aqua 12/06/22 $green
    Milesight docs; plan the Lambdas & snowpipe of Milesight devices arriving this week; snowsql, copy into VARIANT
    for snowpipe definition.

$aqua 12/05/22 $green
    re-clone standalone-dev-env, run ./setup.sh, branch off py3-develop, add energypro queries,  
    re-factor for new directory structure since 1st writing the queries, test. 
    Milesight docs  

"
exit 0
