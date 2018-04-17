This script was created to solve the problem of no pre-existing force directed graph mind-mapping solutions.

My goal was to show relationships between various activities in a visualization that could be quickly edited and appended.

# Input

The script accepts a CSV formatted table with the following layout:

|         | Node 1 | Node 2 | Node 3...
| ------- | ------ |------- | ---------
| Topic 1 |   X    |        |    X
| Topic 2 |        |    X   |    X
| Topic 3 |   X    |        |     
| Topic 4 |   X    |        |    X

Nodes could be considered 'tags' with Xs denoting whether or not a topic is
associated with a tag. Nodes and topics can be unlimited

# Output

The network graph should show how the various topics are associated with
nodes/tags. This requires a two-column table (no headers)

|         |        |
| ------- | ------ |
| Topic 1 | Node 1 |
| Topic 1 | Node 3 |
| Topic 2 | Node 2 |
| Topic 2 | Node 3 |

# Graph

After the output CSV is generated, the whole thing can be uploaded to a Google
Fusion table, and the network graph option selected

https://fusiontables.google.com
