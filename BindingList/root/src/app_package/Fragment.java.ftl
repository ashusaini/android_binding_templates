package ${packageName};

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.recyclerview.widget.DefaultItemAnimator;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.appcompat.widget.SearchView;
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

public class ${className}Fragment extends BaseFragment implements ${className}Contract.View, BaseBindingAdapter.Listener<${modelName}>, SearchView.OnQueryTextListener {

    private final String TAG = this.getClass().getSimpleName();

    SingleRecyclerViewLayoutBinding binding;
    ${className}Adapter adapter;
    List<${modelName}> list;


    @Inject
    ${className}Presenter presenter;

    @Override
    public View createView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {

        binding = SingleRecyclerViewLayoutBinding.inflate(inflater,container,false);



        adapter = new ${className}Adapter(getActivity(), new ArrayList<>(), this);
        adapter.setEmptyView(binding.includedEmptyView.emptyView);

        LinearLayoutManager layoutManager = new LinearLayoutManager(getContext(),LinearLayoutManager.VERTICAL,false);

        binding.recyclerView.setLayoutManager(layoutManager);

        binding.recyclerView.addOnScrollListener(new HidingScrollListener() {
            @Override
            public void onHide() {
                Log.d(TAG, "onHide: ");

                //  ((BaseActivity)getActivity()).animateWholeToolbar(false);
            }
            @Override
            public void onShow() {
                Log.d(TAG, "onShow: ");
                // ((BaseActivity)getActivity()).animateWholeToolbar(true);
            }
        });


        binding.recyclerView.setItemAnimator(new DefaultItemAnimator());
        binding.recyclerView.setAdapter(adapter);


        presenter.attachView(this);
        presenter.getListData();

        binding.add.setOnClickListener(v -> {

            //  startActivityForResult(new Intent(getActivity(),AddMedicineActivity.class),AddMedicineActivity.ADD_EVENT);

        });

        binding.swipeRefresh.setOnRefreshListener(() -> {

            binding.swipeRefresh.setRefreshing(false);
        });




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


    @Override
    public void close() {

        getActivity().setResult(Activity.RESULT_OK);
        getActivity().finish();
    }



    @Override
    public boolean onQueryTextSubmit(String query) {
        return false;
    }

    @Override
    public boolean onQueryTextChange(String newText) {
        return true;
    }

    @Override
    public void onItemClick(View view, ${modelName} item, int clickType) {


    }

    @Override
    public void onListData(List<${modelName}> list) {
        adapter.swapItems(list);
    }


}




