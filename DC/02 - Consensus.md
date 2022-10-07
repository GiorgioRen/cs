# Raft

3 roles:
- followers: default role
- candidate: follower becomes candidate asking for election
- leader: an elected candidate becomes leader

Messages:
- candidate ask for vote
- followers agree on election
- leader logs entries
- heartbeats are sent to followers, messages telling the leader node is still alive

## Leader election

## Log replecation