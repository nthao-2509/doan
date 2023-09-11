var sql = require("mssql");

var config = {
  user: "doann_trong_an",
  password: "doantrongan",
  server: "NGUYENTHANHHAO",
  database: "doan_an",
  // driver: "msnodesqlv8",
  options: {
    trustedConnection: true,
    trustServerCertificate: true,
    instanceName: "",
    encrypt: true,
  },
  port: 1433,
  // port: 51647,
};
var conn = new sql.connect(config, function (err) {
  if (err) console.log("Error Connected SQL Server: ", err);
  var request = new sql.Request();
  return request;
});

module.exports = {
  conn: conn,
  sql: sql,
};
