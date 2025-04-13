
def egg_drop(floors=102, eggs=7):
    """
    Function to solve the egg drop problem using dynamic programming.
    Returns minimum number of attempts needed in worst case.
    """
    dp = [[0 for _ in range(floors + 1)] for _ in range(eggs + 1)]

    for i in range(1, eggs + 1):
        dp[i][1] = 1
        dp[i][0] = 0

    for j in range(1, floors + 1):
        dp[1][j] = j

    for e in range(2, eggs + 1):
        for f in range(2, floors + 1):
            dp[e][f] = float('inf')
            for x in range(1, f + 1):
                worst = 1 + max(dp[e - 1][x - 1], dp[e][f - x])
                if worst < dp[e][f]:
                    dp[e][f] = worst

    print(f"Minimum attempts needed with {eggs} eggs and {floors} floors: {dp[eggs][floors]}")
    return dp[eggs][floors]

# Run the function
egg_drop(102, 7)
