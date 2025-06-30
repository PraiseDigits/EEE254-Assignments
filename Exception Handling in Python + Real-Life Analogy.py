def withdraw_cash(balance, amount):
    try:
        if amount > balance:
            raise ValueError("Insufficient funds.")
        print(f"Dispensing ₦{amount}")
        balance -= amount
    except ValueError as e:
        print("Transaction failed:", e)
    else:
        print("Transaction successful.")
    finally:
        print("Thank you for using our ATM.")
    return balance

# Example usage:
account_balance = 10000
account_balance = withdraw_cash(account_balance, 15000)
