#!/usr/bin/env bash

INPUT=$1

QUERY="select * from polling_states p join vo_hier.Organizations o on o.id = p.org_id where o.slug = '$INPUT'"

mysql -h aurora-ro -D vo_alert_core -u rouser -p -e "$QUERY"
