#!zsh
set -euo pipefail

script_dir=${0:a:h}
cd $script_dir/../src/xcode/ENA/ENA/Resources/ServerEnvironment

serverEnvironments="{
	\"ServerEnvironments\":[
		{
			\"name\": \"Default\",
			\"distributionURL\": \"${WRUXD_SECRET_DIST_URL}\",
			\"submissionURL\": \"${WRUXD_SECRET_SUBM_URL}\",
			\"verificationURL\": \"${WRUXD_SECRET_VERIF_URL}\"
		},
		{
			\"name\": \"WRU-XA\",
			\"distributionURL\": \"${WRUXA_SECRET_DIST_URL}\",
			\"submissionURL\": \"${WRUXA_SECRET_SUBM_URL}\",
			\"verificationURL\": \"${WRUXA_SECRET_VERIF_URL}\"
		},
		{
			\"name\": \"WRU\",
			\"distributionURL\": \"${SECRET_DIST_URL}\",
			\"submissionURL\": \"${SECRET_SUBM_URL}\",
			\"verificationURL\": \"${SECRET_VERIF_URL}\"
		}
	]
}
"

echo $serverEnvironments > ServerEnvironments.json

cd -
