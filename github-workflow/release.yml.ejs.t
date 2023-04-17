---
to: <%= path %>/release.yml
to: "<%= release ? `where/to/render/${name}.js` : null %>"
---
name: Notify on Release
on:
  release:
    types: [published]
jobs:
  slack-message:
    runs-on: ubuntu-latest
    steps:
      - name: Slack Message
        run: |
          curl -X POST -H 'Content-type: application/json' --data '{"text":"New release ${{ github.event.release.tag_name }} is out, <${{ github.event.release.html_url }}|Check it out now.>"}' ${{ secrets.SLACK_WEBHOOK }}
