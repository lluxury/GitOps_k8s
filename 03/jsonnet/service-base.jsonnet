{
  name:: error 'name is required',
  namespace:: error 'namespace is required',
  # 定义默认值,外部可以覆盖
  port:: {
    port: 8080,
    targetPort: 8080,
  },

  apiVersion: 'v1',
  kind: 'Service',
  metadata: {
    name: $.name,
    namespace: $.namespace,
  },
  spec: {
    selector: { app: $.name },
    ports: [
      $.port,
    ],
    type: 'ClusterIP',
  },
}