# DEPLOYER — GCP Cloud Run Protocol Selector

An interactive menu that launches the repo's protocol deployers on demand —
each option fetches the deploy script for that protocol and runs it.

## Run

```bash
chmod +x deployer.sh
./deployer.sh
```

## Menu

| # | Protocol | Source |
|---|---|---|
| 1 | Trojan + 4-protocol bundle (Trojan/VMess/VLESS/Shadowsocks) | `saekacutie/julpone` `deploy.sh` |
| 2 | Shadowsocks WS + Nginx stealth | `saekacutie/shadowsocks` `deploy-ss.sh` |
| 3 | VMess WS + Nginx stealth | `saekacutie/vmess` `deploy-vm.sh` |
| 4 | VLESS WS + fallback | `saekacutie/script` `deploy.sh` |
| 5 | Exit | — |

## Notes

- Scripts are fetched from `raw.githubusercontent.com` at run time — you are
  executing remote code; only run this on machines you control, from repos you trust.
- Requires `gcloud` authenticated in the shell (Cloud Shell works best).
