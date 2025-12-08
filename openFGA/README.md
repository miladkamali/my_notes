# OpenFGA Multi-Project Role-Based Access Control Model

This repository contains an OpenFGA authorization model that implements a flexible role-based access control (RBAC) system for multiple projects. The model allows projects to define their own roles and manage user access through those roles.

## Overview

The `test.fga.yaml` file defines:
- **Authorization Model**: Types and relations for users, projects, roles, access, and permissions
- **Tuples**: Example relationship data demonstrating the model
- **Tests**: Validation tests to ensure the model works correctly

## Prerequisites

To run the tests, you need the OpenFGA CLI tool installed. You can install it using one of the following methods:

### Option 1: Using Homebrew (macOS/Linux)
```bash
brew install openfga/tap/fga
```

### Option 2: Using DNF (Fedora)
```bash
sudo dnf install fga
```

### Option 3: Using npm
```bash
npm install -g @openfga/cli
```

### Option 4: Using Go
```bash
go install github.com/openfga/cli/cmd/fga@latest
```

### Option 5: Download Binary
Visit the [OpenFGA CLI releases page](https://github.com/openfga/cli/releases) and download the appropriate binary for your platform.

### Verify Installation
```bash
fga version
```

## Running the Tests

### Basic Test Execution

To run all tests defined in `test.fga.yaml`:

```bash
fga model test --tests test.fga.yaml
```

### Expected Output

When all tests pass, you should see output like:

```
Tests 3/3 passing
Checks 7/7 passing
```

If any test fails, the output will show which specific assertions failed:

```
Tests 2/3 passing
Checks 5/7 passing

✗ Owner has full access
  ✗ user:alice can_view project:project1
    Expected: true
    Got: false
```

## Understanding the Tests

The `test.fga.yaml` file contains three test suites:

### 1. Owner has full access
Tests that a project owner (`user:alice`) has all permissions:
- ✅ `can_view`: true
- ✅ `can_edit`: true
- ✅ `can_delete`: true
- ✅ `can_manage_users`: true

### 2. User with role has access
Tests that a user assigned to a role (`user:bob` with `role:developer`) has appropriate permissions:
- ✅ `can_view`: true (through membership)
- ✅ `can_edit`: true (through role permissions)
- ✅ `can_manage_users`: false (not granted by role)

### 3. Unassigned user has no access
Tests that a user without any role assignment (`user:charlie`) has no access:
- ✅ `can_view`: false
- ✅ `can_edit`: false

## Model Structure

### Types

- **`user`**: Represents users in the system
- **`project`**: Represents projects that need access control
- **`role`**: Represents roles that can be assigned to projects
- **`access`**: Represents access permissions
- **`permission`**: Represents specific actions/permissions

### Key Relations

#### Project Relations
- `owner`: Direct user assignment (full control)
- `admin`: Users with admin access (inherits from owner)
- `project_role`: Roles assigned to the project
- `member`: Users who are members through role assignment
- `can_view`, `can_edit`, `can_delete`, `can_manage_users`: Permission checks

#### Role Relations
- `assignee`: Users assigned to this role
- `grants_access`: Access permissions granted by this role
- `parent`: Parent role for inheritance
- `can_edit`, `can_manage_users`: Permission flags

## Alternative: Using Docker and Playground

If you prefer a visual interface, you can use the OpenFGA Playground:

### 1. Start OpenFGA with Docker Compose

```bash
docker-compose up -d
```

This will start:
- PostgreSQL database (port 5432)
- OpenFGA server (ports 8080, 8081, 3000, 2112)

### 2. Access the Playground

Open your browser and navigate to:
```
http://localhost:3000
```

### 3. Import the Model

1. Copy the model section from `test.fga.yaml` (lines 2-65)
2. Paste it into the Playground's model editor
3. Copy the tuples section (lines 67-99)
4. Paste them into the tuples section
5. Use the "Check" interface to manually test assertions

## Testing Workflow

1. **Modify the Model**: Edit the model definition in `test.fga.yaml`
2. **Update Tuples**: Adjust the tuples to match your test scenarios
3. **Add/Modify Tests**: Update the test assertions in the `tests` section
4. **Run Tests**: Execute `fga model test --tests test.fga.yaml`
5. **Verify Results**: Check that all tests pass

## Example: Adding a New Test

To add a new test case, add it to the `tests` section:

```yaml
tests:
  # ... existing tests ...
  
  - name: Admin user has edit access
    check:
      - user: user:dave
        object: project:project1
        assertions:
          can_view: true
          can_edit: true
          can_manage_users: true
```

Then add the corresponding tuples:

```yaml
tuples:
  # ... existing tuples ...
  
  - object: project:project1
    user: user:dave
    relation: admin
```

## Troubleshooting

### Tests Fail Unexpectedly
- Verify that all required tuples are defined
- Check that the model syntax is correct (run `fga model test --tests test.fga.yaml` to see validation errors)
- Ensure tuple relationships match the model's relation definitions

### CLI Not Found
- Make sure the OpenFGA CLI is installed and in your PATH
- Try running `which fga` to verify installation location

### Model Validation Errors
- Check for syntax errors in the model definition
- Ensure all referenced types and relations are defined
- Verify relation definitions follow OpenFGA syntax rules

## Resources

- [OpenFGA Documentation](https://openfga.dev/docs)
- [OpenFGA CLI GitHub](https://github.com/openfga/cli)
- [OpenFGA Modeling Guide](https://openfga.dev/docs/modeling)
- [OpenFGA Testing Documentation](https://openfga.dev/docs/modeling/testing)

## License

This model is provided as-is for demonstration and testing purposes.
