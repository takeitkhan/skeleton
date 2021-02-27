@extends('layouts.noapp')

@section('title', 'Biz Boss Dashboard')
@section('sub_title', 'all parent menu here')

@section('dashboard')
    <section class="section">
        <div class="columns">
            <div class="column is-2"></div>
            <div class="column is-8">
                <div class="columns">
                    <div class="column colorWhite">
                        Welcome, <br/><strong>{{ Auth::user()->name ?? NULL }}</strong>&nbsp;
                        as {{ \App\Models\Role::where('id', Auth::user()->role)->first()->name }}<br/>
                        <a href="{{ url('logout') }}"><i class="fas fa-sign-out-alt"></i> Logout</a>
                    </div>
                </div>
                <div class="columns is-multiline">
                    <?php
                    //dd(Auth::user()->role);
                    $routelist = \App\Models\Routelist::where('show_menu', '=', 1)
                        ->where('is_active', '=', 1)
                        ->get();
                    //dd($routelist);
                    ?>
                    @foreach($routelist as $menu)
                        @php
                            $selected = explode(",", $menu->to_role);
                        @endphp

                        @if(!empty(Auth::user()->role))
                            @if(in_array(Auth::user()->role, $selected) && $menu->dashboard_menu == 1)
                                <div class="column is-2">
                                    <div class="isCentered">
                                        @if (!empty($menu->route_url))
                                            @if($menu->route_url == '#' || $menu->route_url == NULL)
                                                <?php $link = '#'; ?>
                                            @else
                                                <?php
                                                $link = route($menu->route_url) . '?route_id=' . $menu->id;
                                                ?>
                                            @endif
                                        @endif
                                        <a href="{{ $link ?? NULL }}"
                                           class="button {{ $menu->bulma_class_icon_bg }} is-large is-accent">
                                            <span><i class="{{ $menu->font_awesome }}"></i></span>
                                        </a>
                                        <div class="o_caption">{{ $menu->route_name }}</div>
                                    </div>
                                </div>
                            @endif
                        @endif


                    @endforeach
                </div>
            </div>
            <div class="column is-2"></div>
        </div>
    </section>
@endsection


{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-warning is-large is-accent">--}}
{{--            <span><i class="fas fa-chart-bar"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Sales</div>--}}
{{--    </div>--}}
{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-link is-large is-accent">--}}
{{--            <span><i class="fas fa-project-diagram"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Projects</div>--}}
{{--    </div>--}}

{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-danger is-large is-accent">--}}
{{--            <span><i class="fas fa-cart-plus"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Point of Sale</div>--}}
{{--    </div>--}}

{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-primary is-large is-accent">--}}
{{--            <span><i class="fas fa-calculator"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Accounting</div>--}}
{{--    </div>--}}

{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-info is-large is-accent">--}}
{{--            <span><i class="fas fa-coins"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Expenses</div>--}}
{{--    </div>--}}

{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a href="{{ route('users.index') }}" class="button is-success is-large is-accent">--}}
{{--            <span><i class="fas fa-users"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Users</div>--}}
{{--    </div>--}}
{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-warning is-large is-accent">--}}
{{--            <span><i class="fas fa-chart-bar"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Sales</div>--}}
{{--    </div>--}}
{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-link is-large is-accent">--}}
{{--            <span><i class="fas fa-project-diagram"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Projects</div>--}}
{{--    </div>--}}

{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-danger is-large is-accent">--}}
{{--            <span><i class="fas fa-cart-plus"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Point of Sale</div>--}}
{{--    </div>--}}

{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-primary is-large is-accent">--}}
{{--            <span><i class="fas fa-calculator"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Accounting</div>--}}
{{--    </div>--}}

{{--</div>--}}
{{--<div class="column is-2">--}}
{{--    <div class="isCentered">--}}
{{--        <a class="button is-info is-large is-accent">--}}
{{--            <span><i class="fas fa-coins"></i></span>--}}
{{--        </a>--}}
{{--        <div class="o_caption">Expenses</div>--}}
{{--    </div>--}}
{{--</div>--}}
