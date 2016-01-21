{% with m.kazoo[{kz_get_featurecode_by_name featurecode_name="dynamic_cid"}] as dynamic_cid %}
<div class="name"><span>{_ Dynamic CID _}</span></div>
<div id="featurecode_dynamic_cid" class="input">
        <span class="add-on">*69</span>
        {% wire id="toggle_featurecode_dynamic_cid" type="click" action={confirm text=_"Do you really want to change this setting?" 
                                                                             action={ postback postback="toggle_featurecode_dynamic_cid" delegate="mod_kazoo"}
                                                                            }
        %}
        {% if dynamic_cid %}
            <i id="toggle_featurecode_dynamic_cid" class="fa fa-check-circle pointer" title="Enabled"></i>
        {% else %}
            <i id="toggle_featurecode_dynamic_cid" class="fa fa-ban pointer" title="Disabled"></i>
        {% endif %}
</div>
{% endwith %}
