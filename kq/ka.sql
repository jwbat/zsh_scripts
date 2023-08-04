known_asset_uuid, mfg_uuid, category_uuid, asset_type_uuid, model_name, properties


UPSERT INTO ubx_known_asset
VALUES (
    '03fab9b8-36df-4356-83bb-2f9e76f921a3',
    'f46b51d4-9ea4-4187-be9a-343bfe95061e',
    '3b1ec768-26c8-48f7-947b-bca56870ba46',
    'f74b165e-89b3-456e-a528-415cda33ce53',
    'UBX-MON-NRG201',
    '{"valid_properties": ["supply_voltage", "temperature_celsius",
                          "accumulated_nanoampere_hour", "average_milliampere",
                          "maximum_milliampere", "minimum_milliampere"]}'::jsonb
);
