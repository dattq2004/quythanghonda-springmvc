<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/taglib.jsp"%>
<sec:authorize access="isAuthenticated()">
	<c:redirect url="/home" />
</sec:authorize>
<div id="layoutAuthentication">
	<div id="layoutAuthentication_content">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-5">
					<div class="card shadow-lg border-0 rounded-lg mt-5">
						<div class="card-header">
							<h3 class="text-center font-weight-light my-4">Login</h3>
							<c:if test="${param.incorrectAccount != null }">
								<div class="alert alert-danger">Username or password
									incorrect</div>
							</c:if>
						</div>
						<div class="card-body">
							<form action="j_spring_security_check" method="POST">
								<div class="form-floating mb-3">
									<input class="form-control" id="inputEmail" name="j_username"
										type="text" placeholder="name@example.com" /> <label
										for="inputEmail">Email address</label>
								</div>
								<div class="form-floating mb-3">
									<input class="form-control" id="inputPassword"
										name="j_password" type="password" placeholder="Password" /> <label
										for="inputPassword">Password</label>
								</div>
								<div class="form-check mb-3">
									<input class="form-check-input" id="inputRememberPassword"
										type="checkbox" value="" /> <label class="form-check-label"
										for="inputRememberPassword">Remember Password</label>
								</div>
								<div
									class="d-flex align-items-center justify-content-between mt-4 mb-0">
									<a class="small" href="password.html">Forgot Password?</a>
									<button type="submit" class="btn btn-primary">Login</button>
								</div>
							</form>
						</div>
						<div class="card-footer text-center py-3">
							<div class="small">
								<a href="register.html">Need an account? Sign up!</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>