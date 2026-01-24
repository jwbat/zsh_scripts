
Typically there are **two common layouts**, and which one you see depends on whether the Go code is **application/service code** or **infrastructure tooling**.

## 1) “Mono-repo, separated by concern” (very common)

```
repo/
  infra/
    terraform/
      modules/
      envs/
      main.tf
      variables.tf
  services/
    ingest/
      cmd/ingest/main.go
      internal/...
      go.mod
  deploy/
    scripts/
    Makefile
```

**Terraform lives** under `infra/terraform` (often split into `modules/` + `envs/` like `dev/`, `prod/`).
**Go services live** under `services/<name>`.

This keeps:

* Terraform concerns (accounts, IAM, networking, wiring) in one place
* Go runtime logic (APIs, workers, schedulers) in another

### How they connect

Terraform typically:

* Builds/declares AWS resources
* References an artifact produced by Go build (zip, container image)
* Passes config to Go via env vars, SSM Parameter Store, Secrets Manager, etc.

---

## 2) “Service owns its infra” (common in microservices)

Each service directory contains both its code and the Terraform that deploys it:

```
repo/
  services/
    ingest/
      app/
        cmd/ingest/main.go
        internal/...
        go.mod
      infra/
        main.tf
        variables.tf
        outputs.tf
```

This is popular when teams want **service-level ownership**: “you build it, you run it.”

---

# Where does the Go artifact go?

On AWS, Go most commonly lands in one of these runtime targets:

## A) Lambda (very common with Go + Terraform)

* Go code builds into a binary
* binary is zipped (or containerized)
* Terraform points `aws_lambda_function` at that artifact

Typical pattern:

* repo contains `services/foo/` (Go code)
* CI builds `dist/foo.zip`
* Terraform deploys `dist/foo.zip` (or pulls from S3/ECR)

You’ll see something like:

* `dist/` or `build/` at repo root
* or per-service `services/foo/dist/`

## B) Container on ECS/Fargate or EKS

* Go builds into a container image
* pushed to ECR
* Terraform provisions ECS/EKS resources and references the image tag

Repo often includes:

* `services/foo/Dockerfile`
* `services/foo/.dockerignore`
* CI pipeline for build/push

## C) Bare EC2 / systemd (less common these days, but still exists)

* Terraform provisions EC2
* userdata or config management installs the binary
* systemd runs it

---

# How do Terraform and Go “touch” each other inside the repo?

They usually don’t import each other directly. Instead, the connection is via **artifacts and outputs**:

### Go → Terraform

* Go produces:

  * `foo.zip` or Docker image tag
* Terraform consumes:

  * path to zip, S3 object key, or image URI/tag

### Terraform → Go

Terraform produces:

* URLs, ARNs, queue names, table names, topic names, etc.

Go consumes them via:

* environment variables in Lambda/ECS
* config files
* SSM Parameters / Secrets Manager
* sometimes DynamoDB “config” items

---

# The most “AWS-native” practical layout (if you want a suggestion)

This is a pattern that scales cleanly:

```
repo/
  infra/
    modules/
      ingest_service/
      dynamodb_table/
      sqs_queue/
    envs/
      dev/
      prod/
  services/
    ingest/
      cmd/ingest/main.go
      internal/
      go.mod
  dist/         (build outputs; gitignored)
```

* `infra/modules` are reusable building blocks
* `infra/envs/dev` wires them together
* `services/*` are the deployable runtimes
* `dist/` holds build artifacts

---

If you tell me which runtime you’d likely target (**Lambda** vs **ECS/Fargate**), I can show a concrete minimal example tree + the exact Terraform resource wiring for it.
