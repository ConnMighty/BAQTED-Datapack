$give @s writable_book[item_name='{"text": "Subject #$(counter)\'s Journal"}']

$team add subject_$(counter)
$team modify subject_$(counter) prefix ["§7[Subject #$(counter)] "]
$team join subject_$(counter) @s


$spawnpoint @s $(x) 62 $(z)
$tp @s $(x).0 62 $(z).0