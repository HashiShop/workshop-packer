# workshop-packer

## STEP 2 : Provision

### Validate

*Check that a template is valid*

```bash
TEMPLATE=step2 make validate
```

### Inspect

*see components of a template*

```bash
TEMPLATE=step2 make inspect
```
### Build

*Build image from template*

```bash
TEMPLATE=step2 \
    PACKER_VAR_AWS_ACCESS_KEY=<YOUR AWS ACCESS KEY> \
    PACKER_VAR_AWS_SECRET_KEY=<YOUR AWS SECRET KEY> \
    make build
```
