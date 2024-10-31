### Gateway Diagnostics

[Kanban](https://github.com/orgs/ventacity/projects/4/views/4?pane=issue&itemId=72123910)  

[Slack msg](https://ventacity.slack.com/archives/D038GQZGW3F/p1721844881157629)    

We’ve been seeing some periodic gaps in cellular connectivity in field systems,
but since we don’t have any routine monitoring we don’t know how prevalent this issue
is or what the baseline reliability is for Sierra Wireless (our cell provider).
You developed two apps a while back to look at gaps in data streams (at Snowflake?)
We’re wondering how close these tools are to something which could monitor all our field
deployments to give us a daily report or alert of any downtime of more than (30 minutes?)
I figured I’d start by asking you instead of diving into Github to dig up you documentation.
So… the request is for you to remind us what you have already developed, and tell us if either
tool could be readily adapted for this broader mission.  Thanks!


---

##### priority of LLM testing and integration planning

1. User Querying About Assets (not time series data)
This seems like the easiest thing to productize that has high likelihood of being reliable. Let users ask question about assets like “How many RTU’s do I have in New England, and give me a breakdown of total counts by Make and Model”
---
2. Ask LLM to compose Linegraphs
“Graph my CO2s on all the IAQ100 sensors at this Building”
-> returns a JSON description of a HighChart that fits a structure we can turn into a graph
---
3. Ask LLM to Analyze Data Patterns
“What days of the week is my building the most occupied”
“What time of day is typically peak CO2"
---
4. Ask LLM About Docs in the Vault
When we tried this with ChatGPT standard service it didn’t do a great job of combing our own VS1K manuals and correctly answering things, so it didn’t feel quite ready.
