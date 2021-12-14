const env = require('./env.js');
 
const Sequelize = require('sequelize');
const sequelize = new Sequelize(env.database, env.username, env.password, {
  host: env.host,
  dialect: env.dialect,
  operatorsAliases: false,
 
  pool: {
    max: env.max,
    min: env.pool.min,
    acquire: env.pool.acquire,
    idle: env.pool.idle
  }
});
 
const db = {};
 
db.Sequelize = Sequelize;
db.sequelize = sequelize;

db.role = require('../models/role.model.js')(sequelize, Sequelize);
db.admin = require('../models/admin.model.js')(sequelize, Sequelize); 
// db.manager = require('../models/manager.model.js')(sequelize, Sequelize); 
// db.posts = require('../models/posts.model.js')(sequelize, Sequelize); 
// db.rider = require('../models/rider.model.js')(sequelize, Sequelize);

db.role.belongsToMany(db.admin, { through: 'admin_roles', foreignKey: 'roleId', otherKey: 'userId'});
db.admin.belongsToMany(db.role, { through: 'admin_roles', foreignKey: 'userId', otherKey: 'roleId'});

// db.role.belongsToMany(db.manager, { through: 'manager_roles', foreignKey: 'roleId', otherKey: 'userId'});
// db.manager.belongsToMany(db.role, { through: 'manager_roles', foreignKey: 'userId', otherKey: 'roleId'});

// db.role.belongsToMany(db.customer, { through: 'customer_roles', foreignKey: 'roleId', otherKey: 'userId'});
// db.customer.belongsToMany(db.role, { through: 'customer_roles', foreignKey: 'userId', otherKey: 'roleId'});

// db.role.belongsToMany(db.rider, { through: 'rider_roles', foreignKey: 'roleId', otherKey: 'userId'});
// db.rider.belongsToMany(db.role, { through: 'rider_roles', foreignKey: 'userId', otherKey: 'roleId'});

// db.countries = require('../models/countries.model.js')(sequelize, Sequelize);
// db.states = require('../models/states.model.js')(sequelize, Sequelize);
db.posts = require('../models/posts.model.js')(sequelize, Sequelize);

module.exports = db;