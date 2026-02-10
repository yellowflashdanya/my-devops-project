# Microservices on EKS

An end-to-end DevOps project showcasing the deployment of a microservices-based application to a production-ready AWS EKS cluster with a focus on **IaC**.

## 🏗 Project Evolution

1.  **Application Containerization:** Developed optimized **Dockerfiles** for 4 microservices: Currency, Frontend, Product-API, and Product-Images.
2.  **Local Orchestration:** Configured **Docker Compose** for local development and testing.
3.  **Infrastructure as Code:** Engineered a modular **Terraform** setup to deploy a Multi-AZ VPC and EKS cluster.
4.  **Cost Optimization (FinOps):** Implemented a shared **Ingress NGINX** strategy and resource limits (CPU/Memory) to minimize AWS footprint.
5.  **Kubernetes Orchestration (In Progress):** Developing custom manifests (Deployments, Services, Ingress) for scalable service management.

## 🛠 Tech Stack

* **Cloud:** AWS (EKS, VPC, S3, DynamoDB)
* **IaC:** Terraform
* **Containerization:** Docker, Docker Compose
* **K8s Controllers (Planned):** Ingress NGINX
* **CI/CD (Planned):** GitHub Actions & ArgoCD

## 📁 Project Structure

* `terraform/` — Modular AWS infrastructure.
* `k8s/` — Kubernetes manifests (Deployments, Services, Ingress).
* `docker-compose.yaml` — Local development setup.

## 📈 Roadmap

- [x] Dockerization & Local Compose
- [x] Terraform VPC & EKS Modules
- [x] Remote State Management (S3 + DynamoDB)
- [ ] Kubernetes Manifests Implementation (Current)
- [ ] GitOps Pipeline (ArgoCD)
