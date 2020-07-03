<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type="text/javascript">
	function checkWrite(){
		if(document.write.notitle.value==""){
			alert("제목을 입력하십시오.");
		}else if(document.write.notext.value==""){
			alert("내용을 입력하십시오.");
		}else{
			//document.write.submit();
		}
	}
</script>


<div class="contact">
<div class="container">
<div class="row text-center">
				
	<!-- Contact Info -->
	<div class="col-lg-12">
		<div class="contact_info_container">
		<form action="checkwrite.jsp" method="post" name="write" enctype="multipart/form-data">
			<input type="hidden" name="username" value="${username}"/>
			<table class="table table-hover text-center">
					<tr>
						<th>제목</th>
						<td><input type="text" name="notitle" size="63"></td>
					</tr>
					<tr>
						<th class="align-middle">내용</th>
						<td>
							<textarea rows="15" cols="65" name="notext"></textarea>
						</td>
					</tr>
					<tr>
						<th>첨부파일</th>
						<td><input type="file" name="nofile"></td>
					</tr>
			</table>
			<input type="submit" value="쓰기" onclick="javascript:checkWrite()">
		</form>
		</div>
	</div>

</div>
</div>
</div>