echo "Starting tests..."

RED='\033[0;31m'
NC='\033[0m'

export DLC="/platon/pro"
export PROPATH="..:../tests:../tests/mock:../src"
$DLC/bin/_progres -b -p ABLUnitCore.p -param "CFG=./ablunit.json"

if grep -q "</failure>"\'"</error>"  ../results.xml; then
    echo -e $RED "  Seems there are failing tests..." $NC
fi

echo "Finished! Check 'results.xml'"
