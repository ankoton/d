
tellraw @a ["[Server] Debug: system entity は ",{"score":{"objective":"const","name":"$system_entity_num"}},"個 あるべきですが、 ",{"score":{"objective":"global","name":"$system_entity_num"}},"個 あります。"]

function entity:system/initialize

say system entity を再構築しました。
