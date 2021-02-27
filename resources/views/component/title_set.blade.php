@if(!empty($spShowTitleSet) && $spShowTitleSet == true)
    <div class="level-left">
        <div class="level-item is-5">
            <div>
                <h3><strong>{{ $spTitle }}</strong></h3>
                <h4>
                    {{ $spSubTitle }}
                </h4>
            </div>
            @if(!empty($spStatus) && $spStatus == 1)
                <p class="has-text-success hideMessage">
                    {{ !empty($spMessage) ? $spMessage : NULL }}
                </p>
            @else
                <p class="has-text-danger hideMessage">
                    {{ !empty($spMessage) ? $spMessage : NULL }}
                </p>
            @endif
        </div>
    </div>
@endif
