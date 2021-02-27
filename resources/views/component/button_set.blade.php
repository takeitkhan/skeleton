@if(!empty($spShowButtonSet) && $spShowButtonSet == true)
    <div class="level">
        <div class="level-item is-4">
            <a href="{{ $spAddUrl ?? NULL }}" class="button is-small is-success" aria-haspopup="true"
               aria-controls="dropdown-menu">
                <span><i class="fas fa-plus"></i> Add</span>
            </a>
            @if(!empty($spAllData))
                <a href="{{ $spAllData  ?? NULL }}?route_id={{ Request::get('route_id') }}"
                   class="button is-small is-success"
                   aria-haspopup="true"
                   aria-controls="dropdown-menu3">
                    <span><i class="fas fa-database"></i> All Datas</span>
                </a>
            @endif

            @if(!empty($spExportCSV))
                <div class="dropdown">
                    <div class="dropdown-trigger">
                        <button class="button is-small is-success" aria-haspopup="true" aria-controls="dropdown-menu3">
                            <span><i class="fas fa-tasks"></i> Action</span>
                        </button>
                    </div>
                    <div class="dropdown-menu" id="dropdown-menu3" role="menu">
                        <div class="dropdown-content">
                            <a href="{{ $spExportCSV }}" class="dropdown-item">
                                Export CSV
                            </a>
                        </div>
                    </div>
                </div>
            @endif
        </div>
    </div>
@endif

