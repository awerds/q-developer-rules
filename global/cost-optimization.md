# Cost Optimization Standards

## FinOps Principles

### Resource Tagging Strategy
Mandatory tags for all resources:
- `Environment` (prod, staging, dev, test)
- `Owner` (team or individual responsible)
- `Project` (project or application name)
- `CostCenter` (for chargeback/showback)
- `CreatedBy` (automation or user)
- `CreatedDate` (YYYY-MM-DD format)

### Right-Sizing Guidelines
- Start small and scale up based on actual usage
- Use CloudWatch metrics for sizing decisions
- Implement auto-scaling for variable workloads
- Regular review of instance utilization (monthly)
- Use AWS Compute Optimizer recommendations

### Reserved Capacity Strategy
- Use Reserved Instances for predictable workloads (>75% utilization)
- Implement Savings Plans for flexible compute usage
- Regular review and optimization of reservations
- Consider Spot Instances for fault-tolerant workloads

### Storage Optimization
- Implement S3 Intelligent Tiering for unknown access patterns
- Use lifecycle policies to transition to cheaper storage classes
- Regular cleanup of unused EBS snapshots and volumes
- Use EFS Intelligent Tiering for file systems

### Monitoring and Alerting
- Set up billing alerts for unexpected cost increases
- Use AWS Cost Explorer for trend analysis
- Implement cost anomaly detection
- Regular cost optimization reviews (monthly)
- Dashboard for cost visibility by team/project

### Serverless First
- Prefer serverless services to reduce operational overhead
- Use Lambda for event-driven workloads
- Consider Fargate over EC2 for containers
- Use managed databases when possible

### Development Practices
- Implement resource cleanup in CI/CD pipelines
- Use infrastructure as code to prevent resource drift
- Automated shutdown of non-production environments
- Regular audit of unused resources