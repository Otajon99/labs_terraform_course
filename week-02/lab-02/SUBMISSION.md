# Lab 2 Submission Criteria

## Grading Rubric

### Functionality (60%)
- [ ] Configuration successfully deploys without errors
- [ ] All required resources are created
- [ ] Resources are properly configured according to specifications
- [ ] Solution meets all functional requirements

### Code Quality (25%)
- [ ] Code follows Terraform best practices
- [ ] Proper resource naming conventions
- [ ] Appropriate use of variables and outputs
- [ ] Code is well-organized and maintainable

### Standards Compliance (15%)
- [ ] Required tags are included on all resources
- [ ] Terraform version constraint is specified
- [ ] Code passes `terraform fmt -check`
- [ ] Code passes `terraform validate`
- [ ] No hardcoded credentials

## Required Tags
All resources must include:
- `Name` - Descriptive resource name
- `Environment` - "Learning"
- `ManagedBy` - "Terraform"
- `Student` - Your GitHub username
- `AutoTeardown` - "8h"

## Submission Format
Submit your `student-work/` directory containing:
- All Terraform configuration files
- Any supporting documentation
- Evidence of successful deployment (screenshot or log output)

## Common Pitfalls to Avoid
- Missing required tags
- Hardcoding credentials
- Incorrect resource naming
- Missing version constraints
- Inconsistent indentation