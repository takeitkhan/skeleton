@extends('layouts.app')

@section('title')
    Users
@endsection

<section class="hero is-white borderBtmLight">
    <nav class="level">
        @include('component.title_set', [
            'spTitle' => 'Users',
            'spSubTitle' => 'all users here',
            'spShowTitleSet' => true
        ])

        @include('component.button_set', [
            'spShowButtonSet' => true,
            'spAddUrl' => null,
            'spAddUrl' => route('users.create'),
            'spAllData' => route('users.index'),
            'spSearchData' => route('users.search'),
        ])

        @include('component.filter_set', [
            'spShowFilterSet' => true,
            'spPlaceholder' => 'Search user...',
            'spMessage' => $message = $message ?? NULl,
            'spStatus' => $status = $status ?? NULL
        ])
    </nav>
</section>

@section('column_left')
    <div class="columns is-multiline">
        @foreach($users as $user)
            <div class="column is-one-quarter">
                <div class="borderedCol">
                    <article class="media">
                        <figure class="media-left">
                            <p class="image is-64x64">
                                @if(!empty($user->avatar))
                                    <img src="{{ url($user->avatar) }}" alt="{{ $user->name }}">
                                @else
                                    <img src="https://bulma.io/images/placeholders/128x128.png">
                                @endif
                            </p>
                        </figure>
                        <div class="media-content">
                            <div class="content">
                                <p>
                                    <strong>
                                        <a href="{{ route('users.show', $user->id) }}"
                                           title="View user">
                                            {{ $user->name }}
                                        </a>
                                    </strong>
                                    <small>
                                        <strong>Designation: </strong> {{ \App\Models\Designation::where('id', $user->designation)->first()->name }}
                                    </small>
                                    <br/>
                                    <small>
                                        <strong>Role: </strong> {{ \App\Models\Role::where('id', $user->role)->first()->name }}
                                    </small>
                                    <br/>
                                    <small>
                                        <strong>Email: </strong> {{ $user->email }}
                                    </small>
                                    <br/>
                                    <strong>Employee No:</strong> {{ $user->employee_no }} &
                                    <strong>Phone: </strong> {{ $user->phone }}
                                </p>
                            </div>
                            <nav class="level is-mobile">
                                <div class="level-left">
                                    <a href="{{ route('users.show', $user->id) }}"
                                       class="level-item"
                                       title="View user data">
                                        <span class="icon is-small"><i class="fas fa-eye"></i></span>
                                    </a>
                                    <a href="{{ route('users.basic_info', $user->id) }}"
                                       class="level-item"
                                       title="View all transaction">
                                        <span class="icon is-info is-small"><i class="fas fa-edit"></i></span>
                                    </a>
                                    <a class="level-item" title="Delete user" href="javascript:void(0)"
                                       onclick="confirm('Are you sure?')">
                                        <span class="icon is-small is-red"><i class="fas fa-times"></i></span>
                                    </a>
                                </div>
                            </nav>
                        </div>
                    </article>
                </div>
            </div>
        @endforeach
    </div>
@endsection
