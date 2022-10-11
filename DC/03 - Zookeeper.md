# Zookeeper
Coordination service
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

