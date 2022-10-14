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

**Log compaction**: save state for easy recovery
- stored in log
- stored externally
- stored externally using snapshot

