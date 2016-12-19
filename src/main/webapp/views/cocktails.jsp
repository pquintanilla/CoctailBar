<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<jsp:include page="header.jsp" />

<body>
	<div class="container">

		<h1>Liste des cocktails</h1>

		<table id="cocktailsTable" class="table table-hover table-striped">

			<thead>
				<tr>
					<th>Nom</th>
					<th>Prix</th>
					<th>Alcoolisé</th>
				</tr>
			</thead>

			<tbody>
				<c:forEach items="${cocktails}" var="cocktail">
					<tr>
						<td>${cocktail.name}</td>
						<td align="right"><fmt:formatNumber type="currency"
								maxFractionDigits="2" minFractionDigits="2"
								value="${cocktail.price}" /></td>

						<td><c:choose>
								<c:when test="${cocktail.isAlcohol == 0}">
									<p align="center">-</p>
								</c:when>
								<c:when test="${cocktail.isAlcohol == 1}">
									<p align="center">Alcoolisé</p>
								</c:when>
								<c:otherwise>
									<p align="center">pour les bourins</p>
								</c:otherwise>
							</c:choose>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div
		style="position: fixed; bottom: 0; left: 0 padding:20px; fot-size: 18px;">
		<a href="<c:url value='/' />">Retour</a>
	</div>

	<script type="text/javascript">
	
		jQuery.fn.dataTable.Api.register('sum()', function() {
			return this.flatten().reduce(function(a, b) {
				if (typeof a === 'string') {
					a = a.replace(/[^\d.-]/g, '') * 1;
				}
				if (typeof b === 'string') {
					b = b.replace(/[^\d.-]/g, '') * 1;
				}

				return a + b;
			}, 0);
		});

		$('#cocktailsTable').DataTable({
			"footerCallback": function ( row, data, start, end, display ) {
	            var api = this.api(), data;
	 
	            // Remove the formatting to get integer data for summation
	            var intVal = function ( i ) {
	                return typeof i === 'string' ?
	                    i.replace(/[\$,]/g, '')*1 :
	                    typeof i === 'number' ?
	                        i : 0;
	            };
	 
	            // Total over all pages
	            total = api
	                .column( 4 )
	                .data()
	                .reduce( function (a, b) {
	                    return intVal(a) + intVal(b);
	                }, 0 );
	 
	            // Total over this page
	            pageTotal = api
	                .column( 4, { page: 'current'} )
	                .data()
	                .reduce( function (a, b) {
	                    return intVal(a) + intVal(b);
	                }, 0 );
	 
	            // Update footer
	            $( api.column( 4 ).footer() ).html(
	                '$'+pageTotal +' ( $'+ total +' total)'
	            );
	        }
	    } );
	</script>
</body>
</html>