# Newton-Raphson Method Implementation (without numpy)

def newton_raphson(f, df, x0, tol=1e-6, max_iter=100):
    """
    Approximate the root of a real-valued function using the Newton-Raphson method.

    Parameters:
    f        -- the function for which we are trying to approximate a root
    df       -- the derivative of the function
    x0       -- initial guess
    tol      -- tolerance (stop when error is below this)
    max_iter -- maximum number of iterations
    """
    xn = x0
    for n in range(max_iter):
        fxn = f(xn)
        dfxn = df(xn)
        if dfxn == 0:
            print("Zero derivative. No solution found.")
            return None
        xn_new = xn - fxn / dfxn
        if abs(xn_new - xn) < tol:
            print(f"Converged after {n+1} iterations.")
            return xn_new
        xn = xn_new
    print("Exceeded maximum iterations. No solution found.")
    return None

# Example: Solve x^2 - 2 = 0 (Root at sqrt(2))
def f(x):
    return x**2 - 2

def df(x):
    return 2*x

# Solve using initial guess x0 = 1
root = newton_raphson(f, df, x0=1)
print("Approximate root:", root)
