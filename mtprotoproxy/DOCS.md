# Documentation: MTProto Proxy

Use this add-on to provide a private Telegram proxy for yourself or others via your Home Assistant hardware.

## Installation

Click the buttons below to add the repository and install the add-on:

[![Add Repository](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https://github.com/vanny96/hassio-addons)

[![Install Add-on](https://my.home-assistant.io/badges/supervisor_addon.svg)](https://my.home-assistant.io/redirect/supervisor_addon/?addon=mtprotoproxy&repository_url=https://github.com/vanny96/hassio-addons)

## Configuration

| Option | Type | Default | Description |
| :--- | :--- | :--- | :--- |
| `users` | list | `tg` | List of users and their 32-character hex secrets. |
| `modes` | map | `tls: true` | Enable or disable `classic`, `secure`, or `tls` modes. |
| `tls_domain` | string | `www.google.com` | The domain used for TLS masking. |
| `ad_tag` | string | `""` | Optional promotion tag from @BotFather. |

### Secret Generation
The `secret` must be exactly 32 hex characters (0-9, a-f).

### Network Port
By default, the add-on maps internal port **443** to host port **444**. You must forward port **444** on your router to your Home Assistant IP to use the proxy outside your home network.

## How to use
1. Start the add-on.
2. Open the **Logs** tab.
3. Look for a line starting with `tg://proxy?server=...`.
4. Copy and paste this link into Telegram to enable the proxy.