import React, { Component } from "react";
import { ViewPropTypes } from "react-native";

import { requireNativeComponent } from "react-native";

class RNCalendarKit extends Component {
	render() {
		return <CalendarComponent style={this.props.style}></CalendarComponent>
	}
}

RNCalendarKit.Shapes = {
}

RNCalendarKit.propTypes = {
  ...ViewPropTypes,
};

RNCalendarKit.defaultProps = {
};

const CalendarComponent = requireNativeComponent(
	"RNCalendarKit",
	RNCalendarKit,
	{
		nativeOnly: { }
	}
);

export default RNCalendarKit;