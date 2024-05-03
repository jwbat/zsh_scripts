```merged to sbp-mono develop```
    This adds a script for performing arbitrary sequences of 
    database operations (e.g. registering devices and creating smart assets).

GDoc ```UBX Global Data Care and Maintenance``` 
https://docs.google.com/document/d/1u4Kqm8Jn4zRiFBR71HnfZo_DDCA5SmPOnHv7FlPxxaQ/edit

readme at https://github.com/ventacity/sbp-mono/tree/feature/db_operations_utils/strawberry-gql/dev-scripts/dbops

Currently supports registering devices, creating smart assets, inviting users, and updating user permissions.

From the readme, here's an example config file for registering a new thermostat and creating
an asset for it in 3 different clusters:

```yaml
    inputs:
        devices:
            tstat:
              - dev_eui: '24e124715d414489'
              - device_id: '61d296be-22bb-4a00-90aa-c6fd853c97b6'
    operations:
        - register_devices:
          - cluster: 'local'
            UBX-TSTAT100: 'tstat'
          - cluster: 'global'
            UBX-TSTAT100: 'tstat'
        - create_smart_assets:
          - cluster: 'local'
            global_cluster: 'local'
            Test Account 1:
                Test Building 1b:
                    - 'tstat'
          - cluster: 'staging'
            Ventacity Account:
                'HRV & VRF Testing':
                  - 'tstat'
          - cluster: 'dev'
            Ventacity Account (d1):
                Mirror Universe:
                  - 'tstat'
```

## Here's an example for inviting 3 users, granting 2 of them editor access to an account,
## and granting one of them viewer access to a building.

```yaml
inputs:
    users:
        acct_users:
          - email: mytest@gmail.com
          - email: new_user@gmail.com
        bldg_users:
          - email: additional_new_user@gmail.com
operations:
  - invite_users:
      - cluster: local
        users: [acct_users, bldg_users]
  - update_access:
      - cluster: local
        accounts:
            Test Account 1:
                acct_users: editor
        buildings:
            Test Account 1:
                Test Building 1a:
                    bldg_users: viewer
```


#### registered device example:
```
    Registered devices:
      registry_uuid: 69179071-29d1-43bd-a478-90928324bfb8
      serial_number: 24e124746d480155
      device_id: None
      ka_uuid: af2ce77f-f29b-401d-bd89-c70a6f3bf3c4
```

```strawberry-gql/dev-scripts/global_data```
