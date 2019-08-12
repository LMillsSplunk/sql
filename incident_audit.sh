#!/usr/bin/env bash

INCIDENT=$1
SLUG=$2

printf "Incident: %s Slug: %s \n" "$INCIDENT" "$SLUG"

QUERY="CALL IncidentAudit($INCIDENT,\"$SLUG\")"

mysql -h aurora-ro -D vo_reports_data_warehouse -u opssupport -v -v -e "$QUERY"
