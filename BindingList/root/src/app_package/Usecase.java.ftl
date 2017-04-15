package ${packageName};

import com.charpixel.baseandroidproject.Modules.AppData;
import com.charpixel.baseandroidproject.common.UsecaseBase;
import com.charpixel.medrexauserapp.repositories.MedrexaRepositories;

import java.util.List;

import javax.inject.Inject;

import io.reactivex.Observable;

/**
 * Created by ashu on 15/03/17.
 */

public class ${usecaseName}Usecase extends UsecaseBase<List<${modelName}>> {

    private final String TAG = this.getClass().getSimpleName();

    MedrexaRepositories medrexaRepositories;

    @Inject
    public ${usecaseName}Usecase(MedrexaRepositories medrexaRepositories) {
        this.medrexaRepositories = medrexaRepositories;

    }


    @Override
    public Observable<List<${modelName}>> buildObservable() {

        return null;
    }

    public static class Request{


    }


}