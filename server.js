const inquirer = require('inquirer')
const connection = require('./db/connection')
require('console.table')

connection.connect(
    (err) => {
        if (err) {
            console.log(err)
        } else {
            askQuestions()
        }
    }
)

const askQuestions = () => {
    inquirer.prompt([
        {
            type: 'list',
            name: 'start',
            message: 'What would you like to do?',
            choices: [
                'View departments',
                'View roles',
                'View employees',
                'Add department',
                'Add role',
                'Add employee',
                'Update an employee role',
                'Exit'
            ]
        }
    ]).then(
        (submissions) => {
            console.log(submissions)
            if (submissions.choice === 'View departments') {
                viewDepartments()
            }
            else if (submissions.choice === 'View roles') {
                viewRoles()
            }
            else if (submissions.choice === 'View employees') {
                viewEmployees()
            }
            else if (submissions.choice === 'Add department') {
                addDepartment()
            }
            else if (submissions.choice === 'Add role') {
                addRoles()
            }
            else if (submissions.choice === 'Add employee') {
                addEmployee()
            }
            else if (submissions.choice === 'Update an employee role') {
                updateEmployeeRole()
            }
            else if (submissions.choice === 'Exit') {
                process.exit()
            }
        }
    ).catch(
        (err) => {
            console.log(err)
        }
    )
}

const viewDepartments = () => {
    connection.query(
        'SELECT * FROM dpt',
        (err, results) => {
            console.log(err)
            console.table(results)
        }
    );
}