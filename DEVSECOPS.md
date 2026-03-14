# DevSecOps

## what is DevSecOps

## Why is DevSecOps

## how to do DevsecOps

code -> Build -> Test -> Deploy 
(sec)   (sec)   (sec)    (sec)

Code stage - 
SAST - static application security TEsting

Eg - Linter(flake) , {Bandit(SAST tool)- sql injection , code smells}

Build stage - 

Dockerfile -> hadolint

Image ->

Trivy (Has database: - cves, suppose if python3.11 has vul , trivy scan and rate 
as critical, high , medium , low)

Test Stage -

DAST - dynamic appication security testing 
OWASP -top 10 ( open web application security project ) log4j (java lib)



Shift left - Do all your security practice at every staage . 

CI (continuous Integration)

- Code Lint and DAST
- Docker Lint
- Gitleaks (Dependencies check)
- Build and Push
- Image Scan (trivy)

CD (Continuous Deployment)
- Deploy your app
- On a Server (we need a server)
