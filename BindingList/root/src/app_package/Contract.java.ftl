package ${packageName};

import com.charpixel.baseandroidproject.common.BasePresenter;
import com.charpixel.baseandroidproject.common.BaseView;

public interface ${className}Contract{

	public interface View extends BaseView {
 			void onListData(List<${modelName}> list);
	}

	interface Presenter extends BasePresenter {
		void getListData();

	}
}
