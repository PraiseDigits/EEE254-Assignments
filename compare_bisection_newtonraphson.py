# Define the function and its derivative
def f(x):
    return x**2 - 2  # Root is at sqrt(2)

def df(x):
    return 2*x

# Bisection Method
def bisection_method(f, a, b, tol=1e-6):
    steps = 0
    if f(a) * f(b) >= 0:
        print("Bisection method fails: f(a) and f(b) must have opposite signs.")
        return None, steps
    while (b - a) / 2.0 > tol:
        steps += 1
        midpoint = (a + b) / 2.0
        if f(midpoint) == 0:
            return midpoint, steps
        elif f(a) * f(midpoint) < 0:
            b = midpoint
        else:
            a = midpoint
    return (a + b) / 2.0, steps

# Newton-Raphson Method
def newton_raphson(f, df, x0, tol=1e-6, max_iter=100):
    steps = 0
    x = x0
    for _ in range(max_iter):
        steps += 1
        fx = f(x)
        dfx = df(x)
        if dfx == 0:
            print("Zero derivative. Method fails.")
            return None, steps
        x_new = x - fx / dfx
        if abs(x_new - x) < tol:
            return x_new, steps
        x = x_new
    return x, steps

# Comparison Function
def compare_methods():
    print("Comparing Bisection and Newton-Raphson Methods:")
    
    root_bisect, steps_bisect = bisection_method(f, 1, 2)
    print(f"Bisection Method: Root ≈ {root_bisect}, Steps = {steps_bisect}")
    
    root_newton, steps_newton = newton_raphson(f, df, 1)
    print(f"Newton-Raphson Method: Root ≈ {root_newton}, Steps = {steps_newton}")
    
    if steps_bisect < steps_newton:
        print("→ Bisection converged faster.")
    elif steps_bisect > steps_newton:
        print("→ Newton-Raphson converged faster.")
    else:
        print("→ Both took the same number of steps.")

# Run comparison
compare_methods()
