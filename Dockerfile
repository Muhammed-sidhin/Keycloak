FROM quay.io/keycloak/keycloak:15.0.2

COPY blank-white/standalone.xml /opt/jboss/keycloak/standalone/configuration/
COPY blank-white/standalone-ha.xml /opt/jboss/keycloak/standalone/configuration/
