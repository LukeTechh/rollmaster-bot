# RollMaster 🎲

**PT-BR** | [EN](#english)

Bot de dados para Discord focado em RPG, desenvolvido em Ruby.

## Funcionalidades

-  Rolagem de qualquer tipo de dado (d4, d6, d8, d10, d12, d20, d100...)
- ➕ Suporte a modificadores (ex: `2d20+5`)
- 🎯 Dados separados com embed colorido
- 🔴 Falha crítica, resultado normal e crítico com cores diferentes

## Como usar

| Comando | Descrição |
|---|---|
| `2d6` | Rola 2 dados de 6 lados e soma |
| `1d20+3` | Rola 1d20 e adiciona modificador |
| `1d4 1d6 1d20` | Múltiplos dados ao mesmo tempo |
| `2#d20` | Rola 2 dados separados com embed colorido |
| `2#d20+5` | Dados separados com modificador |

## Sistema de cores

- 🔴 **Vermelho escuro** — Falha crítica (valor mínimo)
- 🔴 **Vermelho** — Resultado normal
- 🔴 **Vermelho claro** — Crítico (valor máximo)

## Como configurar

1. Clone o repositório
2. Instale as dependências: `gem install discordrb dotenv`
3. Crie um `.env` baseado no `.env.example`
4. Rode: `ruby bot.rb`

---

## English <a name="english"></a>

RPG dice roller bot for Discord, built with Ruby.

## Features

- 🎲 Roll any dice type (d4, d6, d8, d10, d12, d20, d100...)
- ➕ Modifier support (e.g. `2d20+5`)
- 🎯 Separate dice rolls with colored embeds
- 🔴 Critical fail, normal and critical hit with different colors

## Usage

| Command | Description |
|---|---|
| `2d6` | Rolls 2d6 and sums |
| `1d20+3` | Rolls 1d20 with modifier |
| `1d4 1d6 1d20` | Multiple dice at once |
| `2#d20` | Separate rolls with colored embed |
| `2#d20+5` | Separate rolls with modifier |

## Setup

1. Clone the repository
2. Install dependencies: `gem install discordrb dotenv`
3. Create a `.env` based on `.env.example`
4. Run: `ruby bot.rb`