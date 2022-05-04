# NCD_Travel-Guide-APP

This project is a simple travel note keeping program on the Near blockchain. It also serves as a guide for those who want to travel. Travelers can create, update and delete their travel notes here. Those who want to travel can decide on their travels by visiting the travel guide here. This project it will help people to make travel choices.

LOOM VIDEO : https://www.loom.com/share/b721600be0834c9e868a6294b7864a9c?t=236

## Installation

git clone https://github.com/Murat-Selim/NCD_Travel-Guide-APP

## Steps

1. To Login
```
near login
```

2. To Build
```
yarn build:release
```

3. To Deploy
```
near dev-deploy ./build/release/TravelGuide.wasm
```

4. Export $CONTRACT
```
export CONTRACT=YOUR_DEV_ACCOUNT_HERE
```
# USAGE

## createTravel()
```
near call $CONTRACT createTravel '{"country":"country", "city":"city, "title":"title", "desc":"desc"}' --accountId $OWNER
```

## updateTravel()
```
near call $CONTRACT updateTravel '{"id":"id", "country":"country", "city":"city, "title":"title", "desc":"desc"}' --accountId $OWNER
```

## deleteTravelById()
```
near call $CONTRACT deleteTravelById '{"id":"id"}' --accountId $OWNER
```

## getTravels()
```
near view $CONTRACT getTravels --accountId $OWNER
```

## getTravelById()
```
near call $CONTRACT getTravelById '{"id":"id"}' --accountId $OWNER
```

