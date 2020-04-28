# Initialization of a Keycloak deployment

The following chart helps in setting up a Keycloak deployment by automating the import of a previous Keycloak backup and automatically creating the k8s Secrets containing the client id and secret for eventual OIDC clients.

## Usage
- Inside the Keycloak deployment, save the json output of the export from a previous keycloak install inside a `secrets.yaml` file, under `secrets.keycloak.configInitContainer.configfile` _(Be mindful of formatting correctly the json, it's considered a multiline string for the YAML template).

- Configure the keycloak-init chart with the following values:

1. image name and tag of the keycloak install used.
2. the namespaces where the oidc secrets will be generated, in `oidcSecret.namespaces` as a list.
3. set the correct keycloak internal URL and keycloak admin name, as configured on your own keycloak deployment

### Function
keycloak-init will trigger two Jobs sequentially: one for importing the backup into your keycloak deployment, and the other for automatically creating the Secrets.

The secret creation Job uses a separate ServiceAccount to have the necessary permissions, and also runs it's own container as root. Be aware of this in case it's incompatible with some Cluster Policies instated in your local k8s cluster.