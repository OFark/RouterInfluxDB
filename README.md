# RouterInfluxDB

This comes from: https://www.instructables.com/id/How-to-graph-home-router-metrics/

Edit todb.sh add InfluxDB settings
cron routerstats.sh:

`echo 'cru a routerstats "* * * * * /jffs/scripts/routerstats/routerstats.sh"' >> /jffs/scripts/services-start`
`echo 'cru a "routerstats+30" "* * * * * (sleep 30; /jffs/scripts/routerstats/routerstats.sh)"' >> /jffs/scripts/services-start`

Make sure you've enabled jffs scripting in AsusWRT merlin first.