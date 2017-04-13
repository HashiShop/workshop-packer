# workshop-packer

## STEP 5 : Bonus, Ansible Provisioning with roles

### Install ansible roles

```bash
make install
```

### Validate

*Check that a template is valid*

```bash
TEMPLATE=hextris make validate
```

### Inspect

*see components of a template*

```bash
TEMPLATE=hextris make inspect
```
### Build

*Build image from template*

```bash
TEMPLATE=hextris \
    PACKER_VAR_AWS_ACCESS_KEY=<YOUR AWS ACCESS KEY> \
    PACKER_VAR_AWS_SECRET_KEY=<YOUR AWS SECRET KEY> \
    PACKER_VAR_DOCKERHUB_USERNAME=<YOUR DOCKERHUB USERNAME> \
    make build
```
