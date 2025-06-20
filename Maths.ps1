# Prompt for numbers
[int]$num1 = Read-Host -Prompt "Enter a number"
[int]$num2 = Read-Host -Prompt "Enter another number"

# Initialize menu choice
$menu = 0

while ($menu -ne 2) {
    Write-Host "`n1. Calculate these numbers"
    Write-Host "2. Exit"
    $menu = Read-Host -Prompt "Choose an option"

    if ($menu -eq 1) {
        # Perform calculations
        $add = $num1 + $num2
        $subtract = $num1 - $num2
        $multiply = $num1 * $num2

        if ($num2 -ne 0) {
            $divide = $num1 / $num2
        } else {
            $divide = "Cannot divide by zero"
        }

        # Output results
        Write-Host "`nAddition: $add"
        Write-Host "Subtraction: $subtract"
        Write-Host "Multiplication: $multiply"
        Write-Host "Division: $divide`n"
    }
    elseif ($menu -eq 2) {
        Write-Host "Exiting..."
        break
    }
    else {
        Write-Host "Invalid input. Please select 1 or 2."
    }
}