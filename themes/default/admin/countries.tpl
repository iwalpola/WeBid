<html>
<head>
	<link rel="stylesheet" type="text/css" href="style.css" />
	<script type="text/javascript">
	function selectAll(formObj, isInverse) 
	{
		for (var i=0;i < formObj.length;i++) 
		{
			fldObj = formObj.elements[i];
			if (fldObj.type == 'checkbox' && fldObj.name.substring(0,6) == 'delete')
			{ 
				if (isInverse)
					fldObj.checked = (fldObj.checked) ? false : true;
				else fldObj.checked = true; 
			}
		}
	}
	</script>
</head>
<body style="margin:0;">
<table width="100%" border="0" cellpadding="0" cellspacing="0">
<tr>
	<td background="images/bac_barint.gif">
		<table width="100%" border="0" cellspacing="5" cellpadding="0">
			<tr>
				<td width="30"><img src="images/i_set.gif"></td>
				<td class="white">{L_5142}&nbsp;&gt;&gt;&nbsp;{L_081}</td>
			</tr>
		</table>
	</td>
</tr>
<tr>
	<td align="center" valign="middle">&nbsp;</td>
</tr>
<tr>
	<td align="center" valign="middle">
		<table width="95%" border="0" cellspacing="0" cellpadding="1" bgcolor="#0083D7" align="center">
		<tr>
			<td align="center" class="title">{L_081}</td>
		</tr>
		<tr>
			<td>
				<form name="conf" action="" method="post">
				<table width="100%" cellpadding=2 bgcolor="#FFFFFF">
				<tr>
					<td width="50">&nbsp;</td>
					<td>
						<p>{L_094}</p>
						<p><img src="../images/nodelete.gif" width="20" height="21" style="margin:0; padding:0; vertical-align:middle;"> {L_2__0030}</p>
					</td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td bgcolor="#EEEEEE"><b>{L_087}</b></td>
					<td bgcolor="#EEEEEE" align="center"><b>{L_008}</b></td>
				</tr>
<!-- BEGIN countries -->
				<tr>
					<td>&nbsp;</td>
					<td>
						<input type="text" name="new_countries[]" size="45" value="{countries.COUNTRY}">
						<input type="hidden" name="old_countries[]" value="{countries.COUNTRY}">
					</td>
					<td align="center">{countries.SELECTBOX}</td>
				</tr>
<!-- END countries -->
				<tr>
					<td>{L_394}</td>
					<td><input type="text" name="new_countries[]" size="45"></td>
					<td align="center"><a href="javascript: void(0)" onClick="selectAll(document.forms[0],1)">{L_30_0102}</a>	</td>
				</tr>				  
				<tr>
					<td>&nbsp;</td>
					<td colspan="2"><input type="submit" name="act" value="{L_089}"></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				</table>
				</form>
			</td>
		</tr>
		</table>
	</td>
</tr>
</table>

<!-- INCLUDE footer.tpl -->