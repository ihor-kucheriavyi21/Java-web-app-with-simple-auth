<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns:c="http://www.w3.org/1999/XSL/Transform">
<head>
    <%@ include file="common/header.jspf" %>
    <title>Login</title>

</head>

<body>
<form action="login" method="post">

    <section class="vh-100" style="background-color: #508bfc;">
        <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
                <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                    <div class="card shadow-2-strong" style="border-radius: 1rem;">
                        <div class="card-body p-5 text-center">

                            <h3 class="mb-5">Sign in</h3>

                            <div class="form-outline mb-4">
                                <label class="form-label">User login</label>
                                <input class="form-control form-control-lg" name="login" required="required"
                                       type="text"/>
                            </div>

                            <div class="form-outline mb-4">
                                <label class="form-label">Password</label>
                                <input class="form-control form-control-lg" name="password" required="required"
                                       type="password"/>

                            </div>

                            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>
                            <c:if test="${not empty errorMessage}">
                                <div class="form-outline mt-4">
                                    <p class="alert alert-danger">${errorMessage}</p>
                                </div>
                            </c:if>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</form>
</body>
</html>