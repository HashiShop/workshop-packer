# workshop-packer

## STEP 1 : Build an image

### Validate

*Check that a template is valid*

```bash
TEMPLATE=step1 make validate
```

### Inspect

*See components of a template*

```bash
TEMPLATE=step1 make inspect
```
### Build

*Build image from template*

```bash
TEMPLATE=step1 \
    PACKER_VAR_AWS_ACCESS_KEY=<YOUR AWS ACCESS KEY> \
    PACKER_VAR_AWS_SECRET_KEY=<YOUR AWS SECRET KEY> \
    make build
```
