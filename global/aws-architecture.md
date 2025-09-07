# AWS Architecture Standards

## Well-Architected Framework Compliance

Always apply the 6 pillars of AWS Well-Architected Framework:

### 1. Operational Excellence
- Implement Infrastructure as Code (CloudFormation, CDK, Terraform)
- Use AWS Config for compliance monitoring
- Automate deployments with CI/CD pipelines
- Implement comprehensive logging and monitoring

### 2. Security
- Apply principle of least privilege for all IAM policies
- Enable encryption at rest and in transit by default
- Use AWS Secrets Manager for sensitive data
- Implement network segmentation with VPCs and security groups

### 3. Reliability
- Design for failure - assume components will fail
- Implement multi-AZ deployments for critical workloads
- Use Auto Scaling Groups and Load Balancers
- Implement circuit breakers and retry logic

### 4. Performance Efficiency
- Choose appropriate instance types based on workload characteristics
- Implement caching strategies (ElastiCache, CloudFront)
- Use managed services when possible to reduce operational overhead
- Monitor performance metrics and set up alerts

### 5. Cost Optimization
- Implement resource tagging strategy for cost allocation
- Use Reserved Instances and Savings Plans for predictable workloads
- Implement lifecycle policies for S3 and EBS
- Regular cost reviews and rightsizing exercises

### 6. Sustainability
- Choose regions with renewable energy when possible
- Implement efficient architectures to minimize resource usage
- Use serverless and managed services to optimize resource utilization

## Architecture Patterns

### Microservices
- Use API Gateway for service mesh
- Implement service discovery with AWS Cloud Map
- Use container orchestration (ECS/EKS) or serverless (Lambda)

### Event-Driven Architecture
- Use EventBridge for event routing
- Implement CQRS with separate read/write models
- Use SQS/SNS for reliable message delivery

### Data Architecture
- Implement data lakes with S3 and analytics services
- Use appropriate database services (RDS, DynamoDB, DocumentDB)
- Implement data governance and cataloging with AWS Glue