aws ssm create-maintenance-window \
  --name "Prod-Patching" --schedule "cron(0 22 ? * SAT#1,SAT#3 *)" \
  --duration 4 --cutoff 1 --allow-unassociated-targets
