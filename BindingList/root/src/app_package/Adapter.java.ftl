package ${packageName};

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.util.Log;
import android.view.ViewGroup;


import java.util.List;


/**
 * Created by ashu Template.
 */

public class ${className}Adapter extends BaseBindingAdapter<${capitaliseListItem}Binding,${modelName}> {

 private final String TAG = this.getClass().getSimpleName();

    public ${className}Adapter(Context context, List<${modelName}> list, BaseBindingAdapter.Listener listener) {
        super(context, list, listener);
    }

    int mode = -1;

    @Override
    public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        ${capitaliseListItem}Binding binding = ${capitaliseListItem}Binding.inflate(mInflater,parent,false);
        return new ${className}ViewHolder(binding ,listener);
    }

    public class ${className}ViewHolder extends BaseViewHolder<${capitaliseListItem}Binding,${modelName}>{

        public ${className}ViewHolder(${capitaliseListItem}Binding binding, Listener l) {
            super(binding, l);
        }

        @Override
        public void bind(${modelName} model , int mode) {

            binding.setModel(model);
            binding.setListener(listener);

            Log.d(TAG, "bind: "+mode);

            if(getMode() != -1)
            {
                mode = getMode();
            }
            binding.setMode(mode);


        }
    }


    public int getMode() {
        return mode;
    }

    public void setMode(int mode) {
        this.mode = mode;
    }

    @Override
    protected String getPrimaryId(${modelName} item) {
        return null;
    }



}