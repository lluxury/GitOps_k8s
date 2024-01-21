local deploy = import 'deploy-base.jsonnet';
local service = import 'service-base.jsonnet';


local
  a = deploy {
    name: 'my-nginx',
    container: {
      image: 'nginx:1.7.9',
    },
  },
  b = service {
    name: 'my-nginx',
    namespace: 'qa',
  };

[a, b]