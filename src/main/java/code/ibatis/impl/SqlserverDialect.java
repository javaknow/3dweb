package code.ibatis.impl;

import com.kuquo.code.ibatis.Dialect;
import java.io.PrintStream;

public class SqlserverDialect implements Dialect {
	public String getLimitString(String sql, int offset, int limit) {
		if ((offset < 0) || (limit <= 0)) {
			return sql;
		}
		sql = sql.trim();
		sql = sql.toLowerCase();

		StringBuffer sb = new StringBuffer(sql.length() + 80);

		int pagesize = limit;
		int maxsize = offset + limit;

		int indexOfOrder = sql.indexOf("order by");
		int endOfSelect = sql.indexOf("select") + "select".length();
		String orderSentence = "";
		String fromTable = "";
		if (-1 != indexOfOrder) {
			orderSentence = sql.substring(indexOfOrder, sql.length());
			fromTable = sql.substring(endOfSelect, indexOfOrder);
		} else {
			fromTable = sql.substring(endOfSelect);
		}
		sb.append(" select * from ( ").append(" select top ").append(pagesize).append(" * from (  ")
				.append(" \tselect top ").append(maxsize).append(fromTable).append(orderSentence)
				.append(" \t\t) as asystable ").append(orderSentence).append(" ) as bsystable  ").append(orderSentence);

		return sb.toString();
	}

	public boolean supportsLimit() {
		return true;
	}

	public static void main(String[] args) {
		Dialect dl = new SqlserverDialect();
		String sql = "select * from tableName order by account asc ";
		int offset = 30;
		int limit = 10;
		String sql2 = dl.getLimitString(sql, offset, limit);
		System.out.println("sql2:" + sql2);
	}
}
