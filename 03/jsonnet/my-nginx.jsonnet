local deploy = import 'deploy-base.jsonnet';

deploy {
  name: 'my-nginx',
  container: {
    image: 'nginx:1.7.9',
  },
}