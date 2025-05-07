# 📘 Script de Pós-Formatação

> Automação de instalação de programas essenciais e pacotes Python em sistemas baseados em Debian/Ubuntu.

---

## 🛠️ Pré-requisitos

- Sistema Linux baseado em **Debian/Ubuntu** (ex: Ubuntu 22.04, Linux Mint, Pop!_OS, etc).
- Conexão com a internet.
- Acesso ao terminal com privilégios de superusuário (`sudo`).

---

## 📦 O que o script instala?

- **Atualizações do sistema**
- **Pacotes essenciais**: `wget`, `git`, `pip`, `tkinter`, entre outros
- **Visual Studio Code**
- **Google Chrome**
- **Mais de 40 bibliotecas Python via `pip3`**, incluindo:
  - `discord.py`, `aiohttp`, `yt-dlp`, `pyinstaller`, `mysql_connector_repackaged` e outros

---

## 🚀 Como executar

### 1. Baixe o script
[⬇ Clique aqui para baixar o script `pos_formatacao.sh`](sandbox:/mnt/data/pos_formatacao.sh)

Ou via terminal:
```bash
wget https://chat.openai.com/sandbox/pos_formatacao.sh
```

---

### 2. Dê permissão de execução
```bash
chmod +x pos_formatacao.sh
```

---

### 3. Execute o script
```bash
./pos_formatacao.sh
```

O script solicitará sua senha de `sudo` para instalar os pacotes.

---

## ✅ Dica
Se quiser rodar o script sempre que formatar seu PC, salve-o em um pendrive ou em um repositório GitHub privado.

---

## ❗ Atenção
- O script **pode demorar alguns minutos**, dependendo da sua conexão e do desempenho do seu PC.
- Certifique-se de que **nenhum processo de instalação esteja travado** antes de rodá-lo novamente.
