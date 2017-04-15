package ${packageName};

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.DefaultItemAnimator;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.SearchView;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.charpixel.baseandroidproject.Application;
import com.charpixel.baseandroidproject.Utilities.HidingScrollListener;
import com.charpixel.baseandroidproject.common.BaseBindingAdapter;
import com.charpixel.baseandroidproject.common.BaseFragment;


import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

/**
 * Created by ashu Template.
 */

public class ${className}Fragment extends BaseFragment implements ${className}Contract.View {

    private final String TAG = this.getClass().getSimpleName();

    ${capitaliseListItem}Binding binding;


    @Inject
    ${className}Presenter presenter;

    @Override
    public View createView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        binding = ${capitaliseListItem}Binding.inflate(inflater,container,false);

        presenter.attachView(this);

        return binding.getRoot();
    }


    public void refresh(){
        
    }


    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        ((Application) getActivity().getApplication()).getNetComponent().inject(this);
    }

    public static ${className}Fragment getInstance(Bundle bundle) {
        ${className}Fragment fragment = new ${className}Fragment();

        if (bundle == null) {
            bundle = new Bundle();
        }

        fragment.setArguments(bundle);
        return fragment;
    }

    @Override
    public void postErrorHandling() {

    }

    @Override
    public View getLoader() {
        return null;
    }


    @Override
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
    }


    public void close() {

        getActivity().setResult(Activity.RESULT_OK);
        getActivity().finish();
    }


}




