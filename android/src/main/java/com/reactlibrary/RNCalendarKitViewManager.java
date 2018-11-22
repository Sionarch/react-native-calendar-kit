
package com.reactlibrary;

import android.app.Activity;
import android.graphics.Color;
import android.support.annotation.Nullable;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.controller.AbstractDraweeControllerBuilder;
import com.facebook.react.uimanager.SimpleViewManager;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.ViewGroupManager;
import com.facebook.react.views.image.GlobalImageLoadListener;

import java.text.SimpleDateFormat;
import java.util.Calendar;

import devs.mulham.horizontalcalendar.HorizontalCalendar;
import devs.mulham.horizontalcalendar.HorizontalCalendarView;
import devs.mulham.horizontalcalendar.utils.HorizontalCalendarListener;

public class RNCalendarKitViewManager extends ViewGroupManager<ViewGroup> {

  public static final String REACT_CLASS = "RNCalendarKit";

  private @Nullable
  AbstractDraweeControllerBuilder mDraweeControllerBuilder;
  private @Nullable
  GlobalImageLoadListener mGlobalImageLoadListener;
  private final @Nullable
  Object mCallerContext;

  @Override
  public String getName() {
    return REACT_CLASS;
  }

  public RNCalendarKitViewManager(
          AbstractDraweeControllerBuilder draweeControllerBuilder,
          @Nullable GlobalImageLoadListener globalImageLoadListener,
          Object callerContext) {
    mDraweeControllerBuilder = draweeControllerBuilder;
    mGlobalImageLoadListener = globalImageLoadListener;
    mCallerContext = callerContext;
  }

  public RNCalendarKitViewManager() {
    // Lazily initialize as FrescoModule have not been initialized yet
    mDraweeControllerBuilder = null;
    mCallerContext = null;
  }

  public AbstractDraweeControllerBuilder getDraweeControllerBuilder() {
    if (mDraweeControllerBuilder == null) {
      mDraweeControllerBuilder = Fresco.newDraweeControllerBuilder();
    }
    return mDraweeControllerBuilder;
  }

  public Object getCallerContext() {
    return mCallerContext;
  }

  @Override
  public FrameLayout createViewInstance(ThemedReactContext context) {
    Activity activity = context.getCurrentActivity();
    View horizCal = activity.getLayoutInflater().inflate(R.layout.fragment_sample, null);

    FrameLayout frameLayout = new FrameLayout(activity);
    frameLayout.addView(horizCal);

    /* starts before 1 month from now */
    Calendar startDate = Calendar.getInstance();
    startDate.add(Calendar.MONTH, -1);

    /* ends after 1 month from now */
    Calendar endDate = Calendar.getInstance();
    endDate.add(Calendar.MONTH, 1);

    HorizontalCalendar horizontalCalendar = new HorizontalCalendar.Builder(frameLayout, R.id.calendarView)
      .range(startDate, endDate)
      .datesNumberOnScreen(5)
      .configure()
        .textColor(Color.parseColor("#bababa"), Color.parseColor("#000000"))
        .selectorColor(Color.parseColor("#51bda1"))
      .end()
      .build();

    final SimpleDateFormat dateFormat = new SimpleDateFormat("dd-MM-yyy HH:mm:ss z");
    horizontalCalendar.setCalendarListener(new HorizontalCalendarListener() {
      @Override
      public void onDateSelected(Calendar date, int position) {
        Log.d("RNCalendarKit", dateFormat.format(date.getTime()));
      }

      @Override
      public boolean onDateLongClicked(Calendar date, int position) {
          Log.d("RNCalendarKit", "LongPress");
        return true;
      }
    });

    return frameLayout;
  }

}