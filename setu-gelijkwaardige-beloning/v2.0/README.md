# Development commands
> `redocly bundle -o api-2.0-bundled.yaml ./src/openapi.yaml`

> `redocly build-docs -o api-2.0-models.html api-2.0-bundled.yaml`

# README: Understanding the setup of v2 Component Schemas for Condition Types and Occurrence Types

This document explains the structure and setup of the **v2 component schemas** for condition types and occurrence types in this repository. It is intended for IT data specialists who are familiar with the business content of conditions, but may be less experienced with JSON Schema and OpenAPI Specification (OAS) constructs.

## 1. Overview

The schemas in this folder define how different **condition types** and **occurrence types** are represented and validated in API specifications. The setup uses **YAML files** with references and the OpenAPI `discriminator` keyword to enable flexible and extensible modeling.

## 2. Main Concepts

### a. Nesting and References

- The main schema file (e.g., condition.yaml) acts as an **abstract definition** for a "condition".
- It uses the `oneOf` keyword to list all possible **concrete condition types**.
- Each concrete type is defined in its own YAML file (e.g., `condition-types/age.yaml`, `condition-types/occurrence.yaml`).
- The main schema references these files using the `$ref` keyword, which points to the relative path of each type.

**Example:**
```yaml
oneOf:
  - $ref: ./condition-types/age.yaml
  - $ref: ./condition-types/occurrence.yaml
  # ...other types...
```

This means that a "condition" can be any one of the referenced types.

### b. OpenAPI Discriminator

- The `discriminator` keyword is used to help tools and consumers determine **which concrete type** a given condition instance represents.
- It specifies a property (here: `conditionType`) that must be present in the data.
- The `mapping` section links possible values of `conditionType` to the corresponding schema files.

**Example:**
```yaml
discriminator:
  propertyName: conditionType
  mapping:
    Age: ./condition-types/age.yaml
    Occurrence: ./condition-types/occurrence.yaml
    # ...other mappings...
```

When an object has `"conditionType": "Age"`, it must conform to the schema in `age.yaml`.

### c. Combination Types

- Some condition types are **combinations** of other conditions (e.g., "all of", "any of", "not").
- These are defined in a subfolder (e.g., `condition-types/combinations/`) and referenced in the same way.
- This allows for **nesting**: a combination condition can itself contain other conditions, enabling complex logical structures.

## 3. Navigating the Folder Structure

- **condition.yaml**: The entry point for all condition types.
- **condition-types/**: Contains individual YAML files for each specific condition type.
- **condition-types/combinations/**: Contains schemas for combination logic (allOf, anyOf, not).
- **occurrence.yaml** (if present): Similar structure for occurrence types.

## 4. How to Extend

To add a new condition type:
1. Create a new YAML schema in `condition-types/`.
2. Add a `$ref` to it in the `oneOf` list in condition.yaml.
3. Add a mapping in the `discriminator` section for the new type.

## 5. Summary

- The setup uses **references** to keep schemas modular and maintainable.
- The **discriminator** property enables polymorphism, making it clear which schema applies to each instance.
- **Combination types** allow for flexible, nested condition logic.

If you are familiar with the business meaning of conditions, you can use the condition.yaml file as your starting point and follow the references to explore or extend the available types. The structure is designed to be both human-readable and machine-validated.
