
FROM public.ecr.aws/nginx/nginx:latest

LABEL maintainer="ecs-cicd-pipeline" 

COPY index.html /usr/share/nginx/html

COPY aws*.jpg /usr/share/nginx/html/

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

