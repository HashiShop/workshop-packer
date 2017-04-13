# workshop-packer

## STEP 4 : Ansible provisioning

### Validate

*Check that a template is valid*

```bash
TEMPLATE=step4 make validate
```

### Inspect

*see components of a template*

```bash
TEMPLATE=step4 make inspect
```
### Build

*Build image from template*

```bash
TEMPLATE=step4 \
    PACKER_VAR_AWS_ACCESS_KEY=<YOUR AWS ACCESS KEY> \
    PACKER_VAR_AWS_SECRET_KEY=<YOUR AWS SECRET KEY> \
    PACKER_VAR_DOCKERHUB_USERNAME=<YOUR DOCKERHUB USERNAME> \
    make build
```
