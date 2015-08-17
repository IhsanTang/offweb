<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<form name="editForm" id="editForm">
	<table class="table table-bordered">
		<tr>
			<td>id:</td>
			<td>${model.id}</td>

		</tr>
		<tr>
			<td>PCode:</td>
			<td><input class="form-control" name="pcode" type="text" value="${model.pcode}" /></td>
		</tr>
		<tr>
			<td>排序:</td>
			<td><input class="form-control" name="order" type="text" value="${model.order}" /></td>
		</tr>
		<tr>
			<td>Code:</td>
			<td><input class="form-control" name="code" type="text" value="${model.code}" /></td>
		</tr>
		<tr>
			<td>类型:</td>
			<td><input class="form-control" name="type" type="text" value="${model.type}" /></td>
		</tr>
		<tr>
			<td>链接</td>
			<td><textarea class="form-control" name="link" rows="10" cols="10"
					style="width:100%;text-align:left; height:80px;"><s:property
						value="model.link" /></textarea></td>
		</tr>
		<tr>
			<td>名称:</td>
			<td><input class="form-control" name="name" type="text" value="${model.name}" /></td>
		</tr>
		<tr>
			<td>英文名称:</td>
			<td><input class="form-control" name="enName" type="text" value="${model.enName}" /></td>
		</tr>
		<s:if test="model.pcode.equals('ROLE')">
			<tr>
				<td>选择权限:</td>
				<td><input class="form-control" name="value" id="value" value="${model.value}"
					type="text"
					onclick="loadPick(event,360,240,'false','value','STATICDATA','','${model.value}','&p_code=AUTHORITY&p_type=NO');" />
				</td>
			</tr>
		</s:if>
		<s:else>
			<tr>
				<td>值:</td>
				<td><textarea class="form-control" name="value" rows="10" cols="10"
						style="width:100%;text-align:left; height:80px;">${model.value}</textarea>
				</td>
			</tr>
		</s:else>
		<tr>
			<td valign="top">标识:</td>
			<td><s:select cssClass="form-control" name="flag"
					list="@cn.yitongworld.enu.FlagType@values()" listKey="name"
					listValue="name()" value="model.flag" /></td>
		</tr>
		<tr>
			<td>描述:</td>
			<td colspan="2"><textarea class="form-control" name="description" rows="10" cols="10"
					style="width:100%;text-align:left; height:80px;">${model.description}</textarea></td>
		</tr>
	</table>
	<br /> <input name="id" type="hidden" value="${model.id}" />
	<div class="">
		<input type="button" value="提交" class="form-control btn btn-success"
			onclick="submitEdit('admAddStaticdata')" />
	</div>
</form>


</body>
</html>