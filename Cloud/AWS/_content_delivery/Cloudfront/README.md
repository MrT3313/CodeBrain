# Cloudfront

> Content Delivery Network (CDN) that delivers data and applications globally with low latency

- cached at the edge
- you expore the cloudfront url to users
- increased security
	- DDoS
- IP Blocking
	- Geo-restriction prevents user sin certain countried from accessing content
- Lambda@Edge
- Real-time metrics
- often used with S3 to deplo content globally

## Origin

> S3 Bucket

- Custom Origin (HTTP)
	- Application Load Balancer
	- EC2 instance
	- S3 Website (must first enable the bucket as a static website)
	- any HTTP backend you want

## Origin Access Identity

## Caching

> cache lives at each CloudFront edge location

- headers
- session cookies
- query string parameters

### Invalidation

> tell edge locations to flush their cache and refresh

## Signed URL / Signed Cookie