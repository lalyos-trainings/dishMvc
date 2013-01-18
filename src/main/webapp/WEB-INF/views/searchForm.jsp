<h2>search by max Price</h2>

<c:url var="searchUrl" value="/product/search" />
<form action="${searchUrl }" method="post">
	Max Price: <input name="maxPrice" />
	<button type="submit" class="btn btn-info">search</button>
</form>