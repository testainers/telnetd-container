<h1>
<img src="helpers/testainers-100.png" alt="Testainers" title="Testainers">
telnetd-container
</h1>

[![Build With Love](https://img.shields.io/badge/%20built%20with-%20%E2%9D%A4-ff69b4.svg)](https://github.com/testainers/telnetd-container/stargazers)
[![Version](https://img.shields.io/badge/dynamic/json?url=https%3A%2F%2Fapi.github.com%2Frepos%2Ftestainers%2Ftelnetd-container%2Freleases%2Flatest&query=%24.name&label=version&color=orange)](https://hub.docker.com/r/testainers/telnetd-container/tags)
[![Licence](https://img.shields.io/github/license/testainers/telnetd-container?color=blue)](https://github.com/testainers/telnetd-container/blob/main/LICENCE)
[![Build](https://img.shields.io/github/actions/workflow/status/testainers/telnetd-container/main.yml?branch=main)](https://github.com/testainers/telnetd-container/releases/latest)

The small container image is designed specifically for testing TELNET
connections.

## Funding

Your contribution will help drive the development of quality tools for the
Flutter and Dart developer community. Any amount will be appreciated.
Thank you for your continued support!

[![BuyMeACoffee](https://www.buymeacoffee.com/assets/img/guidelines/download-assets-sm-2.svg)](https://www.buymeacoffee.com/edufolly)

## PIX

Sua contribuição ajudará a impulsionar o desenvolvimento de ferramentas de
para a co munidade de desenvolvedores Flutter e Dart. Qualquer quantia será
apreciada.
Obrigado pelo seu apoio contínuo!

[![PIX](helpers/pix.png)](https://nubank.com.br/pagar/2bt2q/RBr4Szfuwr)

---

## Environment Variables

| Variable | Options | Default |
|----------|---------|---------|
| --       | --      | --      |

## How to Use

---

## Local Image Build

Build:

```shell
docker build . --no-cache -t telnetd-container
```

Run:

```shell
docker run -d --rm --name telnetd -p 2323:23 \
  -e TELNET_USER=telnetuser \
  -e TELNET_PWD=MySecret123! \
  telnetd-container
```

Test:

```shell
telnet 127.0.0.1 2323
```

Access:

```shell
docker exec -it telnetd sh
```
