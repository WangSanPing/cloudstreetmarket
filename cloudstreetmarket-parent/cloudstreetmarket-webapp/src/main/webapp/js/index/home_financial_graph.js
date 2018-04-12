/**
 * 2017-11-12 add by wangxu
 */
cloudStreetMarketApp.factory("financialDataFactory", function() {
	var data = [];
	return {
		getData: function(market) {
			return financial_data;
		},
		getMax: function(market) {
			return tmpYmax;
		},
		getMin: function(market) {
			return tmpYmin;
		}
	}
});

cloudStreetMarketApp.controller('homeFinancialGraphController', function($scope, financialDataFactory) {
	readSelectValue();
	drawGraph();
	$('.form-control').on('change',function (elem){
		$('#landingGraphContainer').html('');
		readSelectValue();
		drawGraph();
	});
	/**
	 * 获取选择的值
	 */
	function readSelectValue() {
		$scope.currentMarket = $('.form-control').val();
	}

	/**
	 * 画图
	 */
	function drawGraph() {
		Morris.Line({
			element: 'landingGraphContainer',
			hideHover: 'auto',
			data: financialDataFactory.getData($scope.currentMarket),
			ymax: financialDataFactory.getMax($scope.currentMarket),
			ymin: financialDataFactory.getMin($scope.currentMarket),
			pointSize: 3,
			hideHover: 'always',
			xkey: 'period',
			xLabels: 'time',
			ykeys: ['index'],
			postUnits: '',
			parseTime: false,
			labels: ['Index'],
			resize: true,
			smooth: false,
			lineColors: ['#A52A2A']
		});
	}
});