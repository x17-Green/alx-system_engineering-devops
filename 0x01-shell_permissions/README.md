# :crossed_swords: Shell Permissions

learning how to set file, directory permissions on shell
[1;34md[33mr[31mw[32mx[0m[33mr[38;5;244m-[32mx[38;5;244m--[32mx[0m  [38;5;244m-[0m [1;33mgreen[0m [34m 4 Aug 07:37[0m [34m [1mmy_dir[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m21[0m [1;33mgreen[0m [34m 4 Aug 03:43[0m [32m [1m0-iam_betty[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m19[0m [1;33mgreen[0m [34m 4 Aug 03:46[0m [32m [1m1-who_am_i[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m19[0m [1;33mgreen[0m [34m 4 Aug 03:51[0m [32m [1m2-groups[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m30[0m [1;33mgreen[0m [34m 4 Aug 03:54[0m [32m [1m3-new_owner[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m24[0m [1;33mgreen[0m [34m 4 Aug 03:56[0m [32m [1m4-empty[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m28[0m [1;33mgreen[0m [34m 4 Aug 06:30[0m [32m [1m5-execute[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m33[0m [1;33mgreen[0m [34m 4 Aug 06:38[0m [32m [1m6-multiple_permissions[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m28[0m [1;33mgreen[0m [34m 4 Aug 06:40[0m [32m [1m7-everybody[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m28[0m [1;33mgreen[0m [34m 4 Aug 04:09[0m [32m [1m8-James_Bond[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m28[0m [1;33mgreen[0m [34m 4 Aug 04:57[0m [32m [1m9-John_Doe[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m--[33mr[38;5;244m--[0m [1;32m42[0m [1;33mgreen[0m [34m 4 Aug 07:21[0m [32m [1m10-mirror_permissions[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m27[0m [1;33mgreen[0m [34m 5 Aug 02:20[0m [32m [1m11-directories_permissions[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m32[0m [1;33mgreen[0m [34m 4 Aug 07:36[0m [32m [1m12-directory_permissions[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m31[0m [1;33mgreen[0m [34m 5 Aug 02:20[0m [32m [1m13-change_group[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m34[0m [1;33mgreen[0m [34m 5 Aug 02:20[0m [32m [1m100-change_owner_and_group[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m44[0m [1;33mgreen[0m [34m 5 Aug 02:20[0m [32m [1m101-symbolic_link_permissions[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m49[0m [1;33mgreen[0m [34m 5 Aug 02:20[0m [32m [1m102-if_only[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m42[0m [1;33mgreen[0m [34m 5 Aug 02:20[0m [32m [1m103-Star_Wars[0m
.[38;5;244m-[1;31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m--[0m  [1;32m0[0m [1;33mgreen[0m [34m 4 Aug 04:38[0m [32m [1mhello[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m--[0m  [1;32m0[0m [1;33mgreen[0m [34m 4 Aug 05:21[0m [32m [1molleh[0m
.[1;33mr[31mw[4;32mx[0m[33mr[38;5;244m-[32mx[33mr[38;5;244m-[32mx[0m [1;32m95[0m [1;33mgreen[0m [34m11 Aug 03:37[0m [32m [1mREADME.md[0m
