# MTProto Proxy for Home Assistant

This add-on allows you to use your Home Assistant instance as a proxy for Telegram, helping to bypass censorship and secure your connection.

## Features
* **Multi-Architecture Support:** Compatible with aarch64, amd64, armhf, armv7, and i386.
* **TLS Stealth:** Uses `tls_domain` to mask proxy traffic as standard HTTPS traffic.
* **Flexible Modes:** Supports Classic, Secure, and TLS transport protocols.

## Quick Start
1. Add the repository to your Home Assistant instance.
2. Install the **MTProto Proxy** add-on.
3. Configure your 32-character hex secret.
4. Start the add-on and check the logs for your connection link.