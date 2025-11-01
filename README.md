### 🚀 appleville Bot Setup Guide

Welcome to the bot setup guide! Follow the steps below to install and configure the bot correctly. This guide is designed for new users, with clear explanations for each step.

📱 **For Mobile Users (Termux):** [View the guide here](https://github.com/MeoMunDep/Guides-for-using-my-script-on-termux)

---

## Table of Contents

1. [System Requirements](#system-requirements)
2. [Installing the Bot](#installing-the-bot)
3. [Bot Configuration](#bot-configuration)
4. [Running the Bot](#running-the-bot)
5. [Updating the Bot](#updating-the-bot)
6. [Contact & Support](#contact--support)

---

## System Requirements

Before running the bot, make sure you have installed:

- **Node.js** (Version: `22.11.0`)
- **npm** (Version: `10.9.0`)
- **Git**
- **Docker** _(Optional)_

📥 **Node.js & npm:** [Download](https://t.me/KeoAirDropFreeNe/257/1462)

📥 **Git:** [Download](https://t.me/KeoAirDropFreeNe/257/60831)

---

## Installing the Bot

<details>
<summary><strong>🔧 Install via Git</strong></summary>

```bash
git clone https://github.com/MeoMunDep/appleville.git
cd appleville
npm install --no-audit --no-fund --prefer-offline --force user-agents axios meo-forkcy-colors meo-forkcy-utils meo-forkcy-proxy meo-forkcy-logger cheerio
```

</details>

<details>
<summary><strong>🧰 Manual Installation</strong></summary>

1. Download and extract the bot manually.
2. Run the same `npm install` command as above.

</details>

<details>
<summary><strong>🐳 Install via Docker</strong></summary>

```bash
docker build -t appleville-image .
docker run -d --name appleville-container -v $(pwd)/logs:/app/logs appleville-image
```

> 💡 On **Windows CMD**, use `%cd%` instead of `$(pwd)`

</details>

---

## Bot Configuration

<details open>
<summary><strong>📜 1. <code>configs.json</code> - Main Configuration</strong></summary>

```json
{
  "proxyMode": "round",
  "rotateProxy": false,
  "skipInvalidProxy": true,
  "proxyRotationInterval": 2,

  "delayEachAccount": [1, 1],
  "timeToRestartAllAccounts": 300,
  "howManyAccountsRunInOneTime": 1,

  "harvestHouseCoin": true,
  "harvestPlants": true,

  "plantSeeds": {
    "enable": true,
    "random": true,
    "wheat": 1,
    "lettuce": 1,
    "carrot": 1,
    "tomato": 1,
    "onion": 1,
    "strawberry": 1,
    "pumpkin": 1,
    "golden-apple": 1,
    "crystal-apple": 1,
    "diamond-apple": 1,
    "platinum-apple": 1,
    "royal-apple": 1,
    "legacy-apple": 1,
    "ascendant-apple": 1,
    "relic-apple": 1,
    "ethereal-apple": 1,
    "quantum-apple": 1,
    "celestial-apple": 1,
    "apex-apple": 1
  },

  "buySeeds": {
    "enable": true,
    "random": true,
    "wheat": 1,
    "lettuce": 1,
    "carrot": 1,
    "tomato": 1,
    "onion": 1,
    "strawberry": 1,
    "pumpkin": 1,
    "golden-apple": 1,
    "crystal-apple": 1,
    "diamond-apple": 1,
    "platinum-apple": 1,
    "royal-apple": 1,
    "legacy-apple": 1,
    "ascendant-apple": 1,
    "relic-apple": 1,
    "ethereal-apple": 1,
    "quantum-apple": 1,
    "celestial-apple": 1,
    "apex-apple": 1
  },

  "useBoosts": {
    "enable": true,
    "random": true,
    "boosts": {
      "fertiliser": 1,
      "silver-tonic": 1,
      "super-fertiliser": 1,
      "golden-tonic": 1,
      "deadly-mix": 1,
      "quantum-fertilizer": 1,
      "potion-of-gains": 1,
      "elixir-of-degens": 1,
      "giga-brew": 1,
      "wild-growth": 1,
      "warp-time-elixir": 1,
      "titans-growth": 1,
      "apex-potion": 1
    }
  },

  "buyBoosts": {
    "enable": true,
    "random": true,
    "boosts": {
      "fertiliser": 1,
      "silver-tonic": 1,
      "super-fertiliser": 1,
      "golden-tonic": 1,
      "deadly-mix": 1,
      "quantum-fertilizer": 1,
      "potion-of-gains": 1,
      "elixir-of-degens": 1,
      "giga-brew": 1,
      "wild-growth": 1,
      "warp-time-elixir": 1,
      "titans-growth": 1,
      "apex-potion": 1
    }
  },

  "spin": {
    "enable": true,
    "random": true,
    "color": "green",
    "ap": 100,
    "amount": 1
  }
}
```

---

### ✅ **Updated Config Parameters Table**

| **Parameter Name**            | **Type**           | **Default** | **Description**                                  |
| ----------------------------- | ------------------ | ----------- | ------------------------------------------------ |
| `proxyMode`                   | `string`           | `"round"`   | Proxy mode to use. Options: `static`, `round`    |
| `rotateProxy`                 | `boolean`          | `false`     | Enable proxy rotation between accounts           |
| `skipInvalidProxy`            | `boolean`          | `true`      | Skip account if its proxy is invalid             |
| `proxyRotationInterval`       | `number`           | `2`         | Minutes between proxy rotations                  |
| `delayEachAccount`            | `[number, number]` | `[1, 1]`    | Random delay range (in seconds) between accounts |
| `timeToRestartAllAccounts`    | `number`           | `300`       | Time (in seconds) before restarting all accounts |
| `howManyAccountsRunInOneTime` | `number`           | `1`         | Number of accounts to run in parallel            |

---

### 🌾 **Farming Features**

| **Parameter Name** | **Type**  | **Default** | **Description**                                  |
| ------------------ | --------- | ----------- | ------------------------------------------------ |
| `harvestHouseCoin` | `boolean` | `true`      | Automatically harvest House Coins                |
| `harvestPlants`    | `boolean` | `true`      | Automatically harvest plants once they are ready |

---

### 🌱 **Plant Seeds Settings**

| **Path**                | **Type**  | **Default** | **Description**                               |
| ----------------------- | --------- | ----------- | --------------------------------------------- |
| `plantSeeds.enable`     | `boolean` | `true`      | Enable auto-planting seeds                    |
| `plantSeeds.random`     | `boolean` | `true`      | Randomize seed selection when planting        |
| `plantSeeds.<seedName>` | `number`  | `1`         | Seed priority level (higher = more preferred) |

> Includes: wheat, lettuce, carrot, tomato, onion, strawberry, pumpkin, golden-apple, crystal-apple, diamond-apple, platinum-apple, royal-apple, legacy-apple, ascendant-apple, relic-apple, ethereal-apple, quantum-apple, celestial-apple, apex-apple.

---

### 🛒 **Buy Seeds Settings**

| **Path**              | **Type**  | **Default** | **Description**                      |
| --------------------- | --------- | ----------- | ------------------------------------ |
| `buySeeds.enable`     | `boolean` | `true`      | Enable auto-buying seeds             |
| `buySeeds.random`     | `boolean` | `true`      | Randomize seed buying                |
| `buySeeds.<seedName>` | `number`  | `1`         | Buy amount or priority for each seed |

---

### ⚗️ **Use Boosts Settings**

| **Path**                  | **Type**  | **Default** | **Description**                 |
| ------------------------- | --------- | ----------- | ------------------------------- |
| `useBoosts.enable`        | `boolean` | `true`      | Enable using boosts             |
| `useBoosts.random`        | `boolean` | `true`      | Randomize boost usage           |
| `useBoosts.boosts.<name>` | `number`  | `1`         | Boost usage weight or max limit |

> Boosts: fertiliser, silver-tonic, super-fertiliser, golden-tonic, deadly-mix, quantum-fertilizer, potion-of-gains, elixir-of-degens, giga-brew, wild-growth, warp-time-elixir, titans-growth, apex-potion.

---

### 🧪 **Buy Boosts Settings**

| **Path**                  | **Type**  | **Default** | **Description**                       |
| ------------------------- | --------- | ----------- | ------------------------------------- |
| `buyBoosts.enable`        | `boolean` | `true`      | Enable auto-buying boosts             |
| `buyBoosts.random`        | `boolean` | `true`      | Randomize which boosts to buy         |
| `buyBoosts.boosts.<name>` | `number`  | `1`         | Buy amount or priority for each boost |

---

### 🎡 **Spin Settings**

| **Path**      | **Type**  | **Default** | **Description**             |
| ------------- | --------- | ----------- | --------------------------- |
| `spin.enable` | `boolean` | `false`     | Enable spinning feature     |
| `spin.random` | `boolean` | `true`      | Choose random spin settings |
| `spin.color`  | `string`  | `"green"`   | Spin color selection        |
| `spin.ap`     | `number`  | `100`       | AP amount to use for spin   |
| `spin.amount` | `number`  | `1`         | Number of spin times        |

</details>

<details>
<summary><strong>🗂️ 2. <code>datas.txt</code> - User Data</strong></summary>

📥 [Guide from Telegram](https://t.me/KeoAirDropFreeNee/1586)

```txt
...
...
...
```

</details>

<details>
<summary><strong>🌐 3. <code>proxies.txt</code> - Proxy List</strong></summary>

📥 [Free proxy from Webshare](https://www.webshare.io/?referral_code=4l5kb3glsce7)

```txt
host:port
http://host:port
socks5://user:pass@host:port
...
```

</details>

<details>
<summary><strong>💼 4. <code>wallets.txt</code> - Wallet List</strong></summary>

📥 [Generate wallets here](https://github.com/MeoMunDep/Automatic-Ultimate-Create-Wallets-for-Airdrop)

```txt
0xabc123...
0xdef456...
...
```

</details>

---

## Running the Bot

<details open>
<summary><strong>🪟 Run on Windows (.bat)</strong></summary>

1. Double-click `run.bat`
2. It auto-updates, installs dependencies, and runs the bot.

> If it fails, right-click → **Run as Administrator**
> Or run from CMD:

```cmd
run.bat
```

</details>

<details>
<summary><strong>🐧 Run on Linux/macOS (.sh)</strong></summary>

```bash
chmod +x run.sh
./run.sh
```

</details>

<details>
<summary><strong>🐳 Run with Docker</strong></summary>

```bash
docker stop appleville-container 2>/dev/null && docker rm appleville-container 2>/dev/null
docker build -t appleville-image .
docker run -d --name appleville-container -v $(pwd)/logs:/app/logs appleville-image
```

> Later restart:

```bash
docker start appleville-container
```

</details>

---

## Updating the Bot

<details>
<summary><strong>🔄 If installed via Git</strong></summary>

```bash
cd appleville
git pull origin main
npm install
```

</details>

<details>
<summary><strong>🐳 If using Docker</strong></summary>

```bash
docker stop appleville-container
docker rm appleville-container
docker build -t appleville-image .
docker run -d --name appleville-container appleville-image
```

</details>

---

## Contact & Support

- **Support me via** [Referral Link](https://app.appleville.xyz?ref=cmf7dy84s00rrs61k6w96l5jq)
- **Donate:** [Donate Here](https://t.me/KeoAirDropFreeNe/312/27801)
- **Contact (Work):** [@MeoMunDep](https://t.me/MeoMunDep)
- **Support Group:** [Join here](https://t.me/KeoAirDropFreeNe)
- **Updates Channel:** [View channel](https://t.me/KeoAirDropFreeNee)
- **YouTube:** [Watch here](https://www.youtube.com/@keoairdropfreene)
- **Instagram:** [Follow](https://www.instagram.com/meomundep)
- **Tiktok:** [Follow](https://www.tiktok.com/@meomundep)

---

⚠️ **Disclaimer**: This code is provided "as is" without any warranties. Use it at your own risk. You are solely responsible for any consequences arising from its use. Redistribution or sale of this code in any form is strictly prohibited.

✨ Thank you for using the bot, hope you earn from my scripts! Good luck! 🚀

<p align="center">
  <sub>✨ Created by <b>@MeoMunDep</b> | Automation Tools for Airdrop Farmers</sub>
</p>
