package edu.zipcloud.cloudstreetmarket.core.dtos;

import java.math.BigDecimal;
import java.util.Date;
import java.util.Map;

/**
 * 
 * @ClassName DailyMarketActivityDTO
 * @Description TODO(这里用一句话描述这个类的作用)
 * @author wangx
 * @Date 2017年11月5日 下午1:52:35
 * @version 1.0.0
 */
public class DailyMarketActivityDTO
{
	String marketShortName;
	String marketId;
	Map<String, BigDecimal> values;
	Date dateSnapshot;

	/**
	 * 构造函数
	 * 
	 * @Description TODO(这里用一句话描述这个方法的作用)
	 * @param marketShortName
	 * @param marketID
	 * @param values
	 * @param dateSnapshot
	 */
	public DailyMarketActivityDTO(String marketShortName, String marketID, Map<String, BigDecimal> values,
			Date dateSnapshot)
	{
		this.marketShortName = marketShortName;
		this.marketId = marketID;
		this.values = values;
		this.dateSnapshot = dateSnapshot;
	}

	public String getMarketShortName()
	{
		return marketShortName;
	}

	public void setMarketShortName(String marketShortName)
	{
		this.marketShortName = marketShortName;
	}

	public String getMarketId()
	{
		return marketId;
	}

	public void setMarketId(String marketId)
	{
		this.marketId = marketId;
	}

	public Map<String, BigDecimal> getValues()
	{
		return values;
	}

	public void setValues(Map<String, BigDecimal> values)
	{
		this.values = values;
	}

	public Date getDateSnapshot()
	{
		return dateSnapshot;
	}

	public void setDateSnapshot(Date dateSnapshot)
	{
		this.dateSnapshot = dateSnapshot;
	}
}
