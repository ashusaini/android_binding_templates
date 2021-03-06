<?xml version="1.0" encoding="utf-8"?>
<layout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    xmlns:tools="http://schemas.android.com/tools">
    <data>
        <variable
            name="mode"
            type="Integer"/>
        <variable
            name="model"
            type="${modelName}"/>
        <variable
            name="listener"
            type="com.charpixel.baseandroidproject.common.BaseBindingAdapter.Listener"/>
    </data>


    <RelativeLayout
        android:orientation="vertical"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:foreground="?android:attr/selectableItemBackground"
        android:layout_marginLeft="@dimen/_16sdp"
        android:layout_marginRight="@dimen/_8sdp"
        android:onClick="@{view -> listener.onItemClick(view,model,0)}"
        android:layout_marginTop="@dimen/_8sdp">

                <TextView
                android:layout_width="wrap_content"
                android:layout_height="wrap_content"
                android:text="model"
                android:textColor="@color/appBackgroundColor"
                android:textSize="@dimen/_14sdp"
                android:layout_alignParentTop="true"
                android:layout_marginTop="@dimen/_4sdp"
                android:layout_marginStart="16dp"
                />


    </RelativeLayout>
</layout>
