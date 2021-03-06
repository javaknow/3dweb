package com.kuquo.code.ibatis;

import com.ibatis.sqlmap.engine.execution.SqlExecutor;
import com.ibatis.sqlmap.engine.mapping.statement.RowHandlerCallback;
import com.ibatis.sqlmap.engine.scope.RequestScope;
import com.kuquo.code.ibatis.impl.MysqlDialect;
import com.kuquo.code.util.PageHelp;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import org.apache.log4j.Logger;

public class LimitSqlExecutor extends SqlExecutor {
	private Logger log = Logger.getLogger(LimitSqlExecutor.class);
	private boolean enableLimit = true;
	private boolean enableSqlLmitRecordCount = true;
	private Dialect dialet;

	public boolean isEnableLimit() {
		return this.enableLimit;
	}

	public void setEnableLimit(boolean enableLimit) {
		this.enableLimit = enableLimit;
	}

	public void executeQuery(RequestScope request, Connection conn, String sql, Object[] parameters, int skipResults,
			int maxResults, RowHandlerCallback callback) throws SQLException {
		if (this.dialet == null) {
			this.dialet = new MysqlDialect();
		}
		try {
			this.log.debug("原始sql：" + sql);
			if (((skipResults != 0) || (maxResults != -999999)) && (supportsLimit())) {
				if ((this.enableSqlLmitRecordCount) && (PageHelp.getTotalElements().intValue() == 0)) {
					String sqlTemp = sql;
					int indexOfOrder = sql.lastIndexOf("order by");
					if (-1 == indexOfOrder) {
						this.log.warn("原始sql：\r" + sql + "\r 缺少 order by ！！");
					} else {
						sqlTemp = sql.substring(0, indexOfOrder);
					}
					int limitSqlRecordCount = getSqlCount(conn, sqlTemp, parameters);
					PageHelp.setTotalElements(Integer.valueOf(limitSqlRecordCount));
				}
				sql = this.dialet.getLimitString(sql, skipResults, maxResults);
				skipResults = 0;
				maxResults = -999999;
			}
			super.executeQuery(request, conn, sql, parameters, skipResults, maxResults, callback);

			printSql(sql, parameters);
		} catch (SQLException ex) {
			this.log.error("数据库执行报错，SQL语句为:" + sql, ex);
			throw ex;
		}
	}

	public int executeUpdate(RequestScope request, Connection conn, String sql, Object[] parameters)
			throws SQLException {
		printSql(sql, parameters);
		try {
			return super.executeUpdate(request, conn, sql, parameters);
		} catch (SQLException ex) {
			this.log.error("数据库执行报错，SQL语句为:" + sql, ex);
			throw ex;
		}
	}

	private static int countString(String str, String s) {
		int temp = 0;
		int count = 0;
		for (;;) {
			temp = str.indexOf(s, temp + 1);
			if (temp == -1) {
				break;
			}
			count++;
		}
		return count;
	}

	private void printSql(String sql, Object[] parameters) {
		StringBuffer logBf = new StringBuffer();
		logBf.append("\ribatis执行sql：\r" + sql);
		if ((parameters != null) && (parameters.length > 0)) {
			StringBuffer paramBf = new StringBuffer();
			for (Object parameter : parameters) {
				paramBf.append(parameter).append(",");
			}
			logBf.append("\rparameters:\r" + paramBf.toString());
		}
		this.log.info(logBf);
	}

	private int getSqlCount(Connection conn, String sql, Object[] parameters) {
		try {
			sql = sql.trim();
			if (sql.endsWith("where")) {
				sql = sql + " 1=1 ";
				this.log.warn(" sql语句以where结尾，是非法sql语句，基类自动为sql语句最后添加 1=1 \r,添加后sql:\r" + sql);
			}
			String statement = "select count(*) from (" + sql + ") as temp";
			this.log.debug("用户获取记录总数的sql:" + statement);

			PreparedStatement st = conn.prepareStatement(statement);
			int count = countString(sql, "?");
			for (int i = 0; i != count; i++) {
				if (parameters[i] != null) {
					if ((parameters[i] instanceof java.sql.Date)) {
						st.setDate(i + 1, (java.sql.Date) parameters[i]);
					} else if ((parameters[i] instanceof Timestamp)) {
						st.setTimestamp(i + 1, (Timestamp) parameters[i]);
					} else if ((parameters[i] instanceof java.util.Date)) {
						st.setTimestamp(i + 1, new Timestamp(((java.util.Date) parameters[i]).getTime()));
					} else {
						st.setObject(i + 1, parameters[i]);
					}
				} else {
					st.setNull(i + 1, 0);
				}
			}
			ResultSet rt = st.executeQuery();
			if (rt.next()) {
				return rt.getInt(1);
			}
			rt.close();
			st.close();
		} catch (Exception e) {
			this.log.error("分页获取记录总数失败！执行sql为：\r" + sql, e);
			e.printStackTrace();
		}
		return 0;
	}

	public boolean supportsLimit() {
		return this.enableLimit;
	}

	public boolean isEnableSqlLmitRecordCount() {
		return this.enableSqlLmitRecordCount;
	}

	public void setEnableSqlLmitRecordCount(boolean enableSqlLmitRecordCount) {
		this.enableSqlLmitRecordCount = enableSqlLmitRecordCount;
	}
}
