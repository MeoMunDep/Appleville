@echo off
title appleville Bot by @MeoMunDep
color 0A

cd %~dp0

echo Checking for bot updates...
git pull origin main > nul 2>&1
echo Bot updated!

echo Checking configuration files...

if not exist configs.json (
    > configs.json echo {
    >> configs.json echo   "proxyMode": "round",
    >> configs.json echo   "rotateProxy": false,
    >> configs.json echo   "skipInvalidProxy": true,
    >> configs.json echo   "proxyRotationInterval": 2,
    >> configs.json echo.
    >> configs.json echo   "delayEachAccount": [1, 1],
    >> configs.json echo   "timeToRestartAllAccounts": 300,
    >> configs.json echo   "howManyAccountsRunInOneTime": 1,
    >> configs.json echo.
    >> configs.json echo   "harvestHouseCoin": true,
    >> configs.json echo   "harvestPlants": true,
    >> configs.json echo.
    >> configs.json echo   "plantSeeds": {
    >> configs.json echo     "enable": true,
    >> configs.json echo     "random": true,
    >> configs.json echo     "wheat": 1,
    >> configs.json echo     "lettuce": 1,
    >> configs.json echo     "carrot": 1,
    >> configs.json echo     "tomato": 1,
    >> configs.json echo     "onion": 1,
    >> configs.json echo     "strawberry": 1,
    >> configs.json echo     "pumpkin": 1,
    >> configs.json echo     "golden-apple": 1,
    >> configs.json echo     "crystal-apple": 1,
    >> configs.json echo     "diamond-apple": 1,
    >> configs.json echo     "platinum-apple": 1,
    >> configs.json echo     "royal-apple": 1,
    >> configs.json echo     "legacy-apple": 1,
    >> configs.json echo     "ascendant-apple": 1,
    >> configs.json echo     "relic-apple": 1,
    >> configs.json echo     "ethereal-apple": 1,
    >> configs.json echo     "quantum-apple": 1,
    >> configs.json echo     "celestial-apple": 1,
    >> configs.json echo     "apex-apple": 1
    >> configs.json echo   },
    >> configs.json echo.
    >> configs.json echo   "buySeeds": {
    >> configs.json echo     "enable": true,
    >> configs.json echo     "random": true,
    >> configs.json echo     "wheat": 1,
    >> configs.json echo     "lettuce": 1,
    >> configs.json echo     "carrot": 1,
    >> configs.json echo     "tomato": 1,
    >> configs.json echo     "onion": 1,
    >> configs.json echo     "strawberry": 1,
    >> configs.json echo     "pumpkin": 1,
    >> configs.json echo     "golden-apple": 1,
    >> configs.json echo     "crystal-apple": 1,
    >> configs.json echo     "diamond-apple": 1,
    >> configs.json echo     "platinum-apple": 1,
    >> configs.json echo     "royal-apple": 1,
    >> configs.json echo     "legacy-apple": 1,
    >> configs.json echo     "ascendant-apple": 1,
    >> configs.json echo     "relic-apple": 1,
    >> configs.json echo     "ethereal-apple": 1,
    >> configs.json echo     "quantum-apple": 1,
    >> configs.json echo     "celestial-apple": 1,
    >> configs.json echo     "apex-apple": 1
    >> configs.json echo   },
    >> configs.json echo.
    >> configs.json echo   "useBoosts": {
    >> configs.json echo     "enable": true,
    >> configs.json echo     "random": true,
    >> configs.json echo     "boosts": {
    >> configs.json echo       "fertiliser": 1,
    >> configs.json echo       "silver-tonic": 1,
    >> configs.json echo       "super-fertiliser": 1,
    >> configs.json echo       "golden-tonic": 1,
    >> configs.json echo       "deadly-mix": 1,
    >> configs.json echo       "quantum-fertilizer": 1,
    >> configs.json echo       "potion-of-gains": 1,
    >> configs.json echo       "elixir-of-degens": 1,
    >> configs.json echo       "giga-brew": 1,
    >> configs.json echo       "wild-growth": 1,
    >> configs.json echo       "warp-time-elixir": 1,
    >> configs.json echo       "titans-growth": 1,
    >> configs.json echo       "apex-potion": 1
    >> configs.json echo     }
    >> configs.json echo   },
    >> configs.json echo.
    >> configs.json echo   "buyBoosts": {
    >> configs.json echo     "enable": true,
    >> configs.json echo     "random": true,
    >> configs.json echo     "boosts": {
    >> configs.json echo       "fertiliser": 1,
    >> configs.json echo       "silver-tonic": 1,
    >> configs.json echo       "super-fertiliser": 1,
    >> configs.json echo       "golden-tonic": 1,
    >> configs.json echo       "deadly-mix": 1,
    >> configs.json echo       "quantum-fertilizer": 1,
    >> configs.json echo       "potion-of-gains": 1,
    >> configs.json echo       "elixir-of-degens": 1,
    >> configs.json echo       "giga-brew": 1,
    >> configs.json echo       "wild-growth": 1,
    >> configs.json echo       "warp-time-elixir": 1,
    >> configs.json echo       "titans-growth": 1,
    >> configs.json echo       "apex-potion": 1
    >> configs.json echo     }
    >> configs.json echo   },
    >> configs.json echo.
    >> configs.json echo   "spin": {
    >> configs.json echo     "enable": false,
    >> configs.json echo     "random": true,
    >> configs.json echo     "color": "green",
    >> configs.json echo     "ap": 100,
    >> configs.json echo     "amount": 1
    >> configs.json echo   }
    >> configs.json echo }
    echo Created configs.json
)


(for %%F in (datas.txt wallets.txt proxies.txt) do (
    if not exist %%F (
        type nul > %%F
        echo Created %%F
    )
))

echo Configuration files checked.

echo Checking dependencies...
if exist "..\node_modules" (
    echo Using node_modules from parent directory...
    cd ..
    CALL npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger cheerio 
    cd %~dp0
) else (
    echo Installing dependencies in current directory...
    CALL npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger cheerio
)
echo Dependencies installation completed!



echo Starting the bot...
node meomundep

pause
exit

