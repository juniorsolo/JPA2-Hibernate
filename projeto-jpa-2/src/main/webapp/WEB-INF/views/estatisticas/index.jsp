<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<c:import url="../template/top.jsp" />
<div class="col-sm-8">
	<div class="panel panel-default">
		<div class="panel-heading">Estatísticas</div>
		<div class="panel-body">
			<div class="container">
				<div class="col-sm-8">
					<a href="<c:url value="/estatisticas/limpar"/>">Limpar</a>
					<table class="table table-striped">
						<thead>
							<tr>
								<th>Em Cache</th>
								<th>Hit</th>
								<th>Miss</th>
								<th>Conexões Abertas</th>
								<th>Conexões Mais Demorada</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>${statistics.queryCachePutCount}</td>
								<td>${statistics.queryCacheHitCount}</td>
								<td>${statistics.queryCacheMissCount}</td>
								<td>${statistics.connectCount}</td>
								<td>${statistics.queryExecutionMaxTime}</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
</div>
<c:import url="../template/down.jsp" />
