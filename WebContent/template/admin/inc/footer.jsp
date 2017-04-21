</div><!--/.main-->
		<script src="<%=request.getContextPath() %>/template/admin/js/jquery-1.11.1.min.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/bootstrap.min.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/chart.min.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/chart-data.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/easypiechart.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/easypiechart-data.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/bootstrap-datepicker.js"></script>
	<script src="<%=request.getContextPath() %>/template/admin/js/bootstrap-table.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>
</html>