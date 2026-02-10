## Resource profiling

To define optimal limits for resources (requests/limits), decide to test the microservice using `grpcurl` and `docker stats`.


### Test results:

- **Idle:** ![Idle Stats](./images/stats_idle.png)
- **Load (500 requests):** ![Load Stats](./images/stats_load.png)


### Conclusions for Kubernetes:

Based on tests, define next limits:

- `requests.cpu: 50m` (reserve for stable operation)
- `limits.cpu: 150m` (peek load reserve)
- `requests.memory: 32Mi` / `limits.memory: 64Mi`

