{
  name:: error 'name is required',
  container:: error 'container is required',

  apiVersion: 'apps/v1',
  kind: 'Deployment',
  metadata: {
    name: $.name,
    labels: { app: $.name },
  },
  spec: {
    selector: { matchLabels: $.metadata.labels },
    template: {
      metadata: { labels: $.metadata.labels },
      spec: {
        containers: [
          $.container { name: $.name },
        ],
      },
    },
  },
}