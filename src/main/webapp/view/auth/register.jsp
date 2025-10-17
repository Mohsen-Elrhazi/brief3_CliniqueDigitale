<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 15/10/2025
  Time: 09:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Create Account</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <script>
        tailwind.config = {
            theme: {
                extend: {
                    colors: {
                        border: 'hsl(214.3 31.8% 91.4%)',
                        input: 'hsl(214.3 31.8% 91.4%)',
                        ring: 'hsl(222.2 84% 4.9%)',
                        background: 'hsl(0 0% 100%)',
                        foreground: 'hsl(222.2 84% 4.9%)',
                        primary: {
                            DEFAULT: 'hsl(222.2 47.4% 11.2%)',
                            foreground: 'hsl(210 40% 98%)',
                        },
                        muted: {
                            DEFAULT: 'hsl(210 40% 96.1%)',
                            foreground: 'hsl(215.4 16.3% 46.9%)',
                        },
                        card: {
                            DEFAULT: 'hsl(0 0% 100%)',
                            foreground: 'hsl(222.2 84% 4.9%)',
                        },
                    },
                }
            }
        }
    </script>
    <style>
        body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', 'Roboto', 'Oxygen', 'Ubuntu', 'Cantarell', sans-serif;
        }
    </style>
</head>
<body class="bg-muted min-h-screen flex flex-col items-center justify-center gap-6 p-6 md:p-10">
<!-- Container -->
<div class="flex w-full max-w-sm flex-col gap-6">
    <!-- Error Message -->
    <div class="flex items-center self-center">
        <c:if test="${not empty erreur}">
            <div style="color: red;">${erreur}</div>
        </c:if>
    </div>

    <!-- Card -->
    <div class="bg-card text-card-foreground rounded-lg border border-border shadow-sm">
        <!-- Card Header -->
        <div class="flex flex-col space-y-1.5 p-6 text-center">
            <h3 class="text-xl font-semibold leading-none tracking-tight">Create your account</h3>
            <p class="text-sm text-muted-foreground mt-2">
                Enter your email below to create your account
            </p>
        </div>

        <!-- Card Content -->
        <div class="p-6 pt-0">
            <form id="signupForm" method="post" action="register">
                <div class="space-y-4">
                    <!-- Full Name -->
                    <div class="space-y-2">
                        <label for="nom" class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70">
                            First Name
                        </label>
                        <input
                                name="nom"
                                id="nom"
                                type="text"
                                placeholder="John Doe"
                                required
                                class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                        />
                    </div>

                    <div class="space-y-2">
                        <label for="prenom" class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70">
                            Last Name
                        </label>
                        <input
                                name="prenom"
                                id="prenom"
                                type="text"
                                placeholder="John Doe"
                                required
                                class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                        />
                    </div>

                    <!-- Email -->
                    <div class="space-y-2">
                        <label for="email" class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70">
                            Email
                        </label>
                        <input
                                name="email"
                                id="email"
                                type="email"
                                placeholder="m@example.com"
                                required
                                class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                        />
                    </div>

                    <!-- Password Fields -->
                    <div class="space-y-2">
                        <label for="password" class="text-sm font-medium leading-none peer-disabled:cursor-not-allowed peer-disabled:opacity-70">
                            Password
                        </label>
                        <input
                                name="motDePasse"
                                id="password"
                                type="password"
                                required
                                minlength="8"
                                class="flex h-10 w-full rounded-md border border-input bg-background px-3 py-2 text-sm ring-offset-background file:border-0 file:bg-transparent file:text-sm file:font-medium placeholder:text-muted-foreground focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:cursor-not-allowed disabled:opacity-50"
                        />
                    </div>


<%--                    <!-- Error Message -->--%>
<%--                    <c:if test="${not empty erreur}">--%>
<%--                        <div style="color: red;">${erreur}</div>--%>
<%--                    </c:if>--%>

                    <!-- Submit Button -->
                    <div class="space-y-2">
                        <button
                                type="submit"
                                class="inline-flex items-center justify-center whitespace-nowrap rounded-md text-sm font-medium ring-offset-background transition-colors focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-ring focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 bg-primary text-primary-foreground hover:bg-primary/90 h-10 px-4 py-2 w-full"
                        >
                            Create Account
                        </button>
                        <p class="text-sm text-muted-foreground text-center">
                            Already have an account?
                            <a href="${pageContext.request.contextPath}/login" class="underline underline-offset-4 hover:text-primary">Sign up</a>
                        </p>
                    </div>
                </div>
            </form>
        </div>
    </div>


</div>


</body>
</html>