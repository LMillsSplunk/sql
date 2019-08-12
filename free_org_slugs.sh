#!/usr/bin/env bash

QUERY="select o.slug from Organizations o join OrganizationBilling b on b.organization_id = o.id where b.tier = \"free\""

mysql -h aurora-ro -D vo_hier -u rouser -p -e "$QUERY" | while read org_slug; do
	echo \"$org_slug\",
done
