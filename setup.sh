#!/bin/sh

consul services register consul.d/sidecar-for-greetings-client.json
consul services register consul.d/sidecar-for-greetings-api-v1.json
consul services register consul.d/sidecar-for-greetings-api-v2.json
consul config write client_service_defaults.hcl
consul config write api_service_defaults.hcl
consul config write api_service_defaults_v1.hcl
consul config write api_service_defaults_v2.hcl
consul config write api_service_router.hcl
