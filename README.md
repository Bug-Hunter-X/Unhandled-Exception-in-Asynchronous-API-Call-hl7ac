# Unhandled Exception in Asynchronous API Call

This repository demonstrates a common error in Dart where exceptions during asynchronous API calls are not properly handled. The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a more robust solution.

## Problem

The original code uses a `try-catch` block to catch exceptions during an HTTP request. However, it only prints the error message to the console and then rethrows the exception.  This means the error is not properly handled and could lead to app crashes or unexpected behavior.

## Solution

The improved code in `bugSolution.dart` demonstrates best practices:

1. **Specific exception handling:**  Instead of a generic `catch (e)`, it handles specific exceptions (e.g., `FormatException` for JSON decoding errors) if possible.
2. **Informative error messages:** The error messages clearly indicate the type and source of the problem.
3. **Proper error propagation:** Instead of simply rethrowing, the solution allows for handling the error at various levels, either by displaying an error message to the user, logging it for debugging, or by implementing a retry mechanism.

## How to run

1. Clone the repository.
2. Run `dart bug.dart` to see the original unhandled exception.
3. Run `dart bugSolution.dart` to see the improved error handling.
