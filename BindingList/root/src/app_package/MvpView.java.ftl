package ${packageName};
import android.os.Bundle;
import androidx.appcompat.widget.SearchView;

import com.charpixel.baseandroidproject.common.BaseActivity;
import ${applicationPackage}.R;

/**
 * Created by ashu Template.
 */

public class ${className}Activity extends BaseActivity {

 	private final String TAG = this.getClass().getSimpleName();


    ${className}Fragment fragment;
    @Override
    protected void create(Bundle savedInstanceState) {
        setToolbarTitle("${modelName}");
        fragment = ${className}Fragment.getInstance(getIntent().getExtras());
        addFragment( fragment , R.id.container , false);
    }

    @Override
    protected int getLayoutResourceId() {
        return R.layout.single_fragment_layout;
    }


    @Override
    protected boolean showToolbar() {
        return true;

    }

    @Override
    protected boolean showTitle() {
        return true;
    }

    @Override
    public boolean isSearchEnabled() {
        return true;
    }


    @Override
    public SearchView.OnQueryTextListener getSearchViewListener() {
        return fragment;
    }


}
