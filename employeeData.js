const mysql = require('mysql');
const inquirer = require('inquirer');
const consoleTable = require('console.table');
const util = require('util');

let connection = mysql.createConnection({
    host: 'localhost',
    port: 3301,
    user: 'root',
    password: '',
    database: 'employee_DB'
});

connection.query = util.promisify(connection.query);

connection.connect(function (err) {
    if (err) throw err;
    initialAction();
})

console.table(
     "\n------------ EMPLOYEE TRACKER ------------\n"
)

const initialAction = async () => {
    try {
        let answer = await inquirer.prompt({
            name: 'action',
            type: 'list',
            message: 'What would you like to do?',
              choices: [
                  'View Employees',
                  'View Departments',
                  'View Roles',
                  'Add Employees',
                  'Add Departments',
                  'Add Roles',
                  'Update Employee Role',
                  'Exit'

              ]
        });
        switch (answer.action) {
            case 'View Employees':
                employeeView();
                break;

            case 'View Departments':
                departmentView();
                break;

            case 'View Roles': 
                 roleView();
                 break;

            case 'Add Employees':
                employeeAdd();
                break

            case 'Add Departments':
                 departmentAdd();
                 break

            case 'Add Roles':
                roleAdd();
                break
            case 'Update Employee Role':
                employeeUpdate();

            case 'Exit':
                connection.end();
                break;
        };
    } catch(err) {
        console.log(err);
        initialAction();
    };
};