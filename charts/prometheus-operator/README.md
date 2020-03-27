# Configuring ProxyInjector

1. Configure ProxyInjector:

    - Set the `watchGlobally` value to true if you want a single injector to watch all namespaces, false otherwise.
    - Create a secret which has a `config.yml` entry with the configuration of proxyInjector, like this:

    ```yaml
    gatekeeper-image: "moveax/keycloak-gatekeeper:latest" 
    enable-default-deny: true
    secure-cookie: true
    verbose: true
    enable-logging: true
    cors-origins:
        - '*'
    cors-methods:
        - GET
        - POST
    resources:
        - uri: '/*'
    ```

    *(note that there's no root `proxyconfig:`  label, this is how it's supposed to be.)*

    - Create a separate `oidc-client-secret` which has two keys: CLIENT_ID and CLIENT_SECRET. 
    *(This secret needs to be readable in the same namespace of the services that the proxy will be injected into.)*
2. deploy the proxyinjector in its own namespace, for example `proxy-injector`



