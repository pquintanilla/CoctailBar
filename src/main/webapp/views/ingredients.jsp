<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<jsp:include page="header.jsp" />

<body>
	<div class="container-fluid">
		
		<h1>Liste des ingrédients</h1>

		<table id="ingredientsTable" class="table table-hover table-striped">
			<thead>
				<tr>
					<th>Nom</th>
					<th>Etat</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${ingredients}" var="ingredient">
					<tr>
						<td>${ingredient.name}</td>
								
						<td><c:choose>
								<c:when test="${ingredient.etat == 0}">
									<p>Liquide</p>
								</c:when>
								<c:when test="${ingredient.etat == 1}">
									<p>Solide</p>
								</c:when>
								<c:when test="${ingredient.etat == 2}">
									<p>Gazeux</p>
								</c:when>
								<c:otherwise>
									<p>proche de l'OHIO...</p>
								</c:otherwise>
							</c:choose>
						</td>
						
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<br>
	<!-- 		<form class="form-horizontal col-md-4 table-bordered">
			<br>
			<div class="form-group">
				<label for="imputName" class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<input type="name" class="form-control" id="inputName"
						placeholder="Imput ingredient name here">
				</div>
			</div>

			<div class="col-md-2 table-bordered">
				<p>toto</p>

			</div>


			<div class="col-md-4 table-bordered">
				<br>
				<div class="radio">
					<label> <input type="radio" name="optionsRadios"
						id="optionsRadios1" value="0" checked> Liquide
					</label>
				</div>
				<div class="radio">
					<label> <input type="radio" name="optionsRadios"
						id="optionsRadios2" value="1"> Solide
					</label>
				</div>
				<div class="radio">
					<label> <input type="radio" name="optionsRadios"
						id="optionsRadios3" value="2"> Gazeux
					</label>
				</div>

				<br>
			</div>


			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10">
					<br>
					<button type="submit" class="btn btn-danger"">Ajouter</button>
				</div>
			</div>

		</form> -->
	</div>

	<div
		style="position: fixed; bottom: 0; left: 0 padding:20px; fot-size: 18px;">
		<a href="<c:url value='/' />">Retour</a>
	</div>


	<script type="text/javascript">
		$('#ingredientsTable').DataTable({
			pageLength : 5,
			lengthMenu : [ 5, 10, 15 ],
			colReorder : true
		});
	</script>
</body>
</html>