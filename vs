#! /bin/zsh
r=$red; g=$gold; y=$yellow; a=$aqua; pg=$palegreen; k=$khaki;
c=$cyan; x=$grey; s=$sea; gr=$green; p=$pink; h=$honeydew;
clear;

echo "

 $a 05/11/23 $gr
    isc-dhcp server configuration. gateway provisioning.

 $a 05/10/23 $gr
    provision and configure conduit

 $a 05/09/23 $gr
    network commands.   get MT gateway to connect & say hi to IoT thru macOS's DHCP server

 $a 05/08/23 $gr
    Configure bash in Ubuntu Linux.  Investigate how to set up and use a DHCP server on Mac
    for connecting to gateways in the field.


 $a 05/04/23 $gr
    implement new ThresholdFieldSlider indicator.

 $a 05/03/23 $gr
    upgrade to Ubuntu 22. Log in to the UI.   Threshold slider in UI. 

 $a 05/02/23 $gr
    finish up local IoT - MQTT subscriptions: listen and filter for gateway_euis and dev_euis;
    document installation, usage, permissions for using the new CLI tool.

 $a 05/01/23 $gr
    troubleshoot permissions issue in AWS IoT
. . .
. . .

 $a 04/27/23 $gr
    Snowflake deletions in preparation of the restaurant deployments; coord with @Parker.
    Diagnose permissions issue in IoT to allow subscription to MQTT topics locally

 $a 04/26/23 $gr
    find a way to test Mac's DHCP server & cnx to a gateway;  local IoT topic subscription

 $a 04/25/23 $gr
    look into how to use a Mac as a DHCP server for connecting to gateways in the field.
    MQTT topic filtering on DevEUI or GatewayEui with a CL parameter. AWS CLI permissions issue.
    Fix bug in agg-energy-building

 $a 04/24/23 $gr
    PTO

 $a 04/20/23 $gr
    Retool testing; make demo-ready

 $a 04/19/23 $gr
    CRUD operations in Retool

 $a 04/18/23 $gr
    Retool for CockroachDB administration, WebUI widgets

 $a 04/17/23 $gr
    exploration of Retool for building WebUIs for CockroachDB administrative tasks
. . .
. . .

"
exit 0
-------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------

 $a 04/14/23 $gr
    Dog River installation  (2 hrs)

 $a 04/13/23 $gr
    aggregate current trend. Energy API meeting.   (4 hrs)

 $a 04/12/23 $gr
    implement PR review recommendations in energy queries

 $a 04/11/23 $gr
    meeting on energy queries; agg property trend 

 $a 04/10/23 $gr
    SW Team meeting.  plan aggregate property trend for Building Energy Report

 $a 04/06/23 $gr
    sync backend work with Jason on frontend on energy query

 $a 04/05/23 $gr
    timezone-informed aggregate building energy consumption by time query

 $a 04/04/23 $gr
    Meeting  with Jonah, Parker, et. al. on SQL windowing in energy queries.
    energy consumption device query updates to reflect TZ-informed start dates

 $a 04/03/23 $gr
    SW Team meeting. backend development environment setup


"
 $a 03/30/23 $gr
    timezone discussion w/ Jason.
    adapt energyConsumptionByTime query to calculate energy consumed
    on the 1st date with data in a date range to make Building Report charts align in the UI.
    

 $a 03/29/23 $gr
    augment building report GQL to return HotDrop names & their contributions to total energy

 $a 03/28/23 $gr
    aggregate energy API

 $a 03/27/23 $gr
    SW Team meeting.  aggregate building energy. script common CRDB queries

...

 $a 03/23/23 $gr
    energy API

 $a 03/22/23 $gr
    energy API

 $a 03/21/23 $gr
    energy API

 $a 03/20/23 $gr
    SW Team meeting. GQL - energy trend building planning

 $a 03/16/23 $gr
    scripts to obtain energy device related uuid's from CRDB

 $a 03/15/23 $gr
    work on understanding new infrastructure; building current aggregation query

 $a 03/14/23 $gr
    study the new infrastructure: CRDB & gql queries.
    artificially generate parallel time series for building wide current to temporarily
    fill in for lack of hotdrop data in ubx_device_data

 $a 03/13/23 $gr
    setup new standalone env, install arm64 version of crdb binary for ubuntu,
    & populate personal crdb cluster; study the new gql queries.
--------------------------------------------------------------------------------------------------------------------------
--------------------------------------------------------------------------------------------------------------------------
 $a 03/09/23 $gr
    Create a Snowpipe to auto-ingest csv object files from the S3 bucket 'ubx-device-to-snowflake'
    to the ventacity.ubx.UBX_DEVICE_DATA table.

 $a 03/08/23 $gr
    Query updates for energy pro.  UI components for energy pro

 $a 03/07/23 $gr
    Meet with Pat on snowpipe creation. Bugfix in aggEnergyByTime query. Troubleshoot login issue.
    Update queries in energy pro to enable better handling of fetches of no data in the UI.

 $a 03/06/23 $gr
    weekly SW team meeting.  setup s-d-e with AuthO.  Building Energy Report components

 $a 03/02/23 $gr
    AWS CloudFormation for WebViewer Server deployment. due to issue of the Apryse CF template only geared for deployment
    to EC2, we're pausing this part of the project for now.  Discuss Retool project.

 $a 03/01/23 $gr
    WebViewer Server.  Energy pro discussion with Terra & Jonah

 $a 02/28/23 $gr
    Monthly all-company meeting.  Discussion on naming conventions in GQl.  WebViewer Server eval.

 $a 02/27/23 $gr
    SW Team meeting. pdf linearizations & PDFTron speedtests.  Docker + WebViewer Server evaluation

-------------------------------------------------------------------------------------------------------------------------

 $a 02/23/23 $gr
    PDF linearization, speed-testing, troubleshooting.  WebViewer Server, Docker, Fargate study

 $a 02/22/23 $gr
    Apryse docs.  Linearization of PDFs using the Apryse SDK.  python script with pikepdf lib

 $a 02/21/23 $gr
    Git study.  Discuss next projects: Apryse / PDFTron pdf linearization.

 $a 02/20/23 $gr
    Presidents Day


#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------
#-------------------------------------------------------------------------------------------------------------------------

echo " 
$a 02/16/23 $gr
    consult with Jonah on features & style of aggregate enery chart; finish chart; Git study

$a 02/15/23 $gr
    (same as 14th)

$a 02/14/23 $gr
    Highcharts stacked column chart Vue component for building aggregate energy

$a 02/13/23 $gr
    SW Team meeting.
    update GQL in aggregate energy query with a simpler, better SQL statement, other refactoring;
    look at luxon library docs & try out their datetime object methods

$a 02/09/23 $gr
    discussion on Adam's updated Building Energy Report & comments
    update aggregate energy query to be able return a total energy consumed from start date to end date.
    Look into the API for stacked bar charts in Highcharts

$a 02/08/23 $gr
    minor refactoring in building aggregate energy query
    make a flow diagram for energy query;  meeting with Jonah: energy pro

$a 02/07/23 $gr
    aggregate building energy consumption query 

$a 02/06/23 $gr
    SW Team meeting.  Assist Pat in AWS IoT.  aggregate building energy consumption GQL query

-------------------------------------------------------------------------------------------------------------------------

$a 01/30/23 $gr
    PTO - driving to pdx.  SW team meeting.  Look into CA certificate expiration for CRDB Serverless.

$a 01/26/23 $gr
    work with Pat on Lambda env, use his x86 - compiled pscyopg2 library; finish env & test

$a 01/25/23 $gr
    troubleshoot Lambda env:  build postgres and awslambda-psycopg2 packages from source with SSL support
    for inclusion in lambda layer.

$a 01/24/23 $gr
    compile psycopg2 dependencies for Linux before  inclusion into Lambda Layer;

$a 01/23/23 $gr
    Begin work on Lambda environment to include the psycopg2 library, a PostgreSQL adapter,
    for interaction between IoT and CRDB.

-------------------------------------------------------------------------------------------------------------------------

$a 01/19/23 $gr
    finish up occupancy sensors; document their configuration.
    Study issue of possible UI representations for occupancy data.
    Re-publish decoded packet data from Lambda for consumption by other services.
    add SecretsManager with permissions, access secrets in Lambda

$a 01/18/23 $gr
    more testing of Milesight occupancy sensors

$a 01/17/23 $gr
    connect, test occupancy sensors

$a 01/16/23 $gr
    MLK Holiday

-------------------------------------------------------------------------------------------------------------------------

$a 01/12/23 $gr
    refactor Milesight Lambda to locally subscribe to IoT messages;
    Setup & test Milesight occupancy sensors.

$a 01/11/23 $gr
    UBX demo meeting
    thingify Mac at saas-devel
    IoT meeting with Pat
    Milesight device + NFC app for device initialization

$a 01/10/23 $gr
    pick up Milesight sensors in Mosier and Hood River, connect to lorawan, provision them on AWS IoT

$a 01/09/23 $gr
    bring frontend energy pro report up to date with new branch on port-pages, energy-report-v2;
    test with up-to-date sbp-mono branch.

-------------------------------------------------------------------------------------------------------------------------

$aqua 01/05/23 $gr
    work with new branch sbp-mono for energypro, update, test

$aqua 01/04/23 $gr
    AWS SDK

$aqua 01/03/23 $gr
    Review & merge PR for sbp-mono energyrpo; configure AWS CLI & test usage; test AWS SDK

-------------------------------------------------------------------------------------------------------------------------

$aqua 12/21/22 $gr
    incorporate newly provisioned Milesight devices' fields for decoding in Lambda.  watch Cloudwatch logs.  query Lakehouse.

$aqua 12/20/22 $gr
    work on a unified decoder that decodes all fields from all Milesight devices in our inventory

$aqua 12/19/22 $gr
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
