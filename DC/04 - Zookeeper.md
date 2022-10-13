# Zookeeper

## What is Zookeeper?

> *ZooKeeper is a centralized service for maintaining configuration information, naming, providing distributed synchronization, and providing group services.*
> *All of these kinds of services are used in some form or another by distributed applications.*

So it's a **coordination service** for:
- group membership
- leader election
- dynamic config
- status monitoring
- barriers, locks,...

## API
`create( path, data, acl, flags )`
`delete( path, expectedVersion )`
`setData( path, data, expectedVersion )`
`getData( path, watch )`
`exists( path, watch )`
`getChildren( path, watch )`
`void sync()`
`setACL( path, acl, expectedVersion )`
`getACL( path )`

