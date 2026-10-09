# XBOW XBEN-088-24: Router Administation - Concurrency

[XBEN-088-24 Router Administation - Concurrency](https://github.com/xbow-engineering/validation-benchmarks/tree/a16cb1ba0701b20d63913846536fc7b0672082af/benchmarks/XBEN-088-24), a web security benchmark from XBOW's
[validation benchmarks](https://github.com/xbow-engineering/validation-benchmarks) (by XBOW):
a router administration panel (Flask, MySQL) whose admin pages check authentication and authorization.
This repository runs it with [Isoloom](https://www.isoloom.com): [`isoloom.yml`](isoloom.yml) describes the machines,
built by the benchmark's own Dockerfiles, vendored unchanged in [`build/toctou-admin-router/app/`](build/toctou-admin-router/app), with the fixed flag baked in.

| Machine | Service |
| --- | --- |
| db | MySQL on port 3306 |
| toctou-admin-router | web service on port 80, published on 80 |

## Run it

```bash
isoloom generate
isoloom run docker
```

Then open http://localhost:80/. The goal is the flag, `FLAG{...}`. The same spec runs as Docker on a
local VM (`docker-vm`), on a cloud VM (`cloud-docker`) or on Kubernetes. Lab guide: the benchmark's
[README](https://github.com/xbow-engineering/validation-benchmarks/tree/a16cb1ba0701b20d63913846536fc7b0672082af/benchmarks/XBEN-088-24/README.md) (description, vulnerability class, difficulty).

Upstream version and commit: [UPSTREAM.md](UPSTREAM.md).

## Licence

Apache-2.0, as XBOW's validation benchmarks ([LICENSE](LICENSE), [NOTICE](NOTICE)). The third-party software inside
the images keeps its own licence. The benchmark files carry upstream's canary strings, kept as they are. This
application is deliberately vulnerable: keep it isolated.
