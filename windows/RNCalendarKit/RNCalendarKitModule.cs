using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace Calendar.Kit.RNCalendarKit
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNCalendarKitModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNCalendarKitModule"/>.
        /// </summary>
        internal RNCalendarKitModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNCalendarKit";
            }
        }
    }
}
