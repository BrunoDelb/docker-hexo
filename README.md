# docker-hexo

Hexo Docker container to build and run based hexo blogs.

The following plugins are preinstalled:
- hexo-admin
- hexo-browsersync
- hexo-deployer-git
- hexo-deployer-s3
- hexo-generator-search
- hexo-generator-sitemap
- hexo-prism-plugin
- Plasma-Paris/hexo-slack-notify

## Build

```
docker build -t hexo .
```

## Usage

```
docker run --rm -v $PWD/blog:/app devopstestlab/hexo hexo generate
```
