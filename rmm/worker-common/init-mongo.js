db = db.getSiblingDB('WISE-PaaS')
db.createUser(
{
  user:"wisepaas",
  pwd:"wisepaas",
  roles:[
  {role: "readWrite", db:"WISE-PaaS"},
  {role: "dbAdmin", db:"WISE-PaaS"},
  {role: "dbOwner", db:"WISE-PaaS"},
  {role: "userAdminAnyDatabase", db:"admin"},
  {role: "hostManager", db:"admin"},
  {role: "clusterAdmin", db:"admin"}
  ]
}
)
