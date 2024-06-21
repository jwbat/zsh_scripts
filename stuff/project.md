## priority of LLM testing and integration planning

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
