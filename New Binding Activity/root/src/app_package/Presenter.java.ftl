package ${packageName};

import com.charpixel.baseandroidproject.common.BasePresenterImpl;
import com.charpixel.baseandroidproject.common.BaseResponseData;
import com.charpixel.baseandroidproject.common.BaseView;
import com.charpixel.baseandroidproject.common.NoDataResponse;

import java.util.List;

import javax.inject.Inject;


/**
 * Created by ashu on 11/03/17.
 */

public class ${className}Presenter extends BasePresenterImpl implements  ${className}Contract.Presenter {

 private final String TAG = this.getClass().getSimpleName();
    ${className}Contract.View view;


    @Inject
    ${className}Presenter(){


    }

    @Override
    public BaseView getView() {
        return view;
    }

    @Override
    public void attachView(BaseView v) {
        this.view = (${className}Contract.View)v;
    }
}
