@if(!empty($spShowFilterSet) && $spShowFilterSet == true)

    <div class="level-right">
        <div class="level-item is-5">
            <div class="control">
                
                {{ Form::open(array('url' => $spSearchData ?? NULL,'method' => 'get','value' => 'PATCH','id' => 'search','files' => true,'autocomplete' => 'off')) }}
                <div class="field has-addons searchInput">
                    <div class="control">
                        <span class="fa fa-search form-control-feedback has-search-btn"></span>
                        <input id="textboxID" class="input" name="key" type="text"
                               value="{{ request()->get('key') ? request()->get('key') : ''  }}"
                               placeholder="{{ $spPlaceholder ?? NULL }}"/>
                    </div>
                    <div class="control xfilterSearchBtn is-hidden-desktop">
                        <button class="input is-small" type="submit"><i class="fas fa-search"></i></button>
                    </div>
                </div>
                {{ Form::close() }}       
                
            </div>
        </div>
    </div>
    <script type="text/javascript">
        document.getElementById('textboxID').select();
    </script>
@endif
