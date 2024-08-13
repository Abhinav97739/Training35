## Task-24

- You are tasked with creating and managing an S3 bucket for a fictional company, "TechVista Inc.," that hosts a static website for displaying their product portfolio. The website will have different types of content, including high-resolution images, which require careful storage management to optimize costs. Additionally, the company has strict security requirements for accessing the content.


### Project Steps and Deliverables:

- Create and Configure an S3 Bucket:
- Create an S3 bucket named techvista-portfolio-[your-initials].
- Enable versioning on the bucket.
![alt text](a.png)

### Set up the bucket for static website hosting.
- Upload the provided static website files (HTML, CSS, images).
- Ensure the website is accessible via the S3 website URL.

![alt text](b.png)
![alt text](c.png)
![alt text](d.png)
![alt text](e.png)

## Website Live Hosting
![alt text](g.png)
![alt text](f.png)

### Implement S3 Storage Classes:

- Classify the uploaded content into different S3 storage classes (e.g., Standard, Intelligent-Tiering, Glacier).
- Justify your choice of storage class for each type of content (e.g., HTML/CSS files vs. images).
![alt text](h.png)
![alt text](i.png)
> Images are categorised into Intelligent-Tiering because they are changed time to time
> Html pages are into Standard category.

### Lifecycle Management:
- Create a lifecycle policy that transitions older versions of objects to a more cost-effective storage class (e.g., Standard to Glacier).
- Set up a policy to delete non-current versions of objects after 90 days.
- Verify that the lifecycle rules are correctly applied.
![alt text](j.png)
![alt text](k.png)

### Configure Bucket Policies and ACLs:
- Create and attach a bucket policy that allows read access to everyone for the static website content.
Restrict access to the S3 management console for specific IAM users using the bucket policy.
- Set up an ACL to allow a specific external user access to only a particular folder within the bucket.
![alt text](l.png)
![alt text](m.png)
