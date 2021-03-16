@extends('layouts.app')
@section('title')
    Create Task
@endsection
@php
    if(request()->get('type') == 'emergency') {
    $title = 'you are creating an emergency task';
    } else {
    $title = 'you are creating a general task';
    }

@endphp
<section class="hero is-white borderBtmLight">
    <nav class="level">
        @include('component.title_set', [
            'spTitle' => 'Create Task',
            'spSubTitle' => $title,
            'spShowTitleSet' => true
        ])

        @include('component.button_set', [
            'spShowButtonSet' => true,
            'spAddUrl' => null,
            'spAddUrl' => route('tasks.create'),
            'spAllData' => route('tasks.index'),
            'spSearchData' => route('tasks.search'),
            'spTitle' => 'Tasks',
        ])

        @include('component.filter_set', [
            'spShowFilterSet' => true,
            'spPlaceholder' => 'Search tasks...',
            'spMessage' => $message = $message ?? NULl,
            'spStatus' => $status = $status ?? NULL
        ])
    </nav>
</section>
@section('column_left')
    <article class="panel is-primary">
        @if(request()->get('type') != 'emergency')
            <a style="display:block; float:right;" href="{{ route('tasks.create') }}?type=emergency"
               class="button is-small is-danger" aria-haspopup="true" aria-controls="dropdown-menu" style="    height: 24px;
    margin-bottom: 6px;">
                <span><i class="fas fa-plus"></i> Emergency Task</span>
            </a>
        @endif

        @if(!empty($task) && $task->id)
            @include('task::layouts.tab')
        @endif


        <div class="customContainer">
            <?php  if (!empty($task) && $task->id) {
                $routeUrl = route('tasks.update', $task->id);
                $method = 'PUT';
            } else {
                $routeUrl = route('tasks.store');
                $method = 'post';
            } ?>
            {{ Form::open(array('url' => $routeUrl, 'method' => $method, 'value' => 'PATCH', 'id' => 'add_route', 'files' => true, 'autocomplete' => 'off')) }}

            @if(request()->get('type') == 'emergency')
                {{ Form::hidden('task_type', $task->task_type ?? 'emergency') }}
            @else
                {{ Form::hidden('task_type', $task->task_type ?? 'general') }}
            @endif
            <div class="columns">
                <div class="column is-3">
                    <div class="field">
                        {{ Form::label('project_id', 'Project', array('class' => 'label')) }}
                        <div class="control">
                            <?php $projects = \Tritiyo\Project\Models\Project::pluck('name', 'id')->prepend('Select Project', ''); ?>
                            {{ Form::select('project_id', $projects, $task->project_id ?? NULL, ['class' => 'input', 'required' => true,  'id' => 'project_select']) }}
                        </div>
                    </div>
                </div>
                <div class="column is-3">
                    <div class="field">
                        {{ Form::label('site_head', 'Site Head', array('class' => 'label')) }}
                        <div class="control">
                            <?php //$siteHead = \App\Models\User::where('role', 2)->pluck('name', 'id')->prepend('Select Site Head', ''); ?>
                            <?php
                            //dd(date('Y-m-d'));
                            $today = date('Y-m-d');
                            $siteHead = \DB::select("SELECT * FROM (SELECT *, (SELECT site_head FROM tasks WHERE tasks.site_head = users.id AND DATE_FORMAT(`tasks`.`created_at`, '%Y-%m-%d') = '$today') AS site_head FROM users WHERE users.role = 2) AS QQ WHERE QQ.site_head IS NULL");
                            ?>
                            <select class="input" name="site_head" id="sitehead_select" required>
                                <option></option>
                                @foreach($siteHead as $resource)
                                    <option value="{{ $resource->id }}">{{ $resource->name }}</option>
                                @endforeach
                            </select>
                        </div>
                    </div>
                </div>

                <div class="column is-3">
                    <div class="field">
                        {{ Form::label('task_name', 'Task Name', array('class' => 'label')) }}
                        <div class="control">
                            {{ Form::text('task_name', $task->task_name ?? NULL, ['class' => 'input is-small', 'required' => true, 'placeholder' => 'Enter Task Name...']) }}
                        </div>
                    </div>
                </div>
            </div>
            <div class="columns">

                <div class="column is-9">
                    <div class="field">
                        {{ Form::label('task_details', 'Task details [Please put all the activity details here]', array('class' => 'label')) }}
                        <div class="control">
                            {{ Form::textarea('task_details', $task->task_details ?? NULL, ['class' => 'textarea', 'required' => true,  'rows' => 5, 'placeholder' => 'Enter task details...']) }}
                        </div>
                    </div>
                </div>
            </div>

            <div class="columns">
                <div class="column">
                    <div class="field is-grouped">
                        <div class="control">
                            <button class="button is-success is-small">Save Changes</button>
                        </div>
                    </div>
                </div>
            </div>
            {{ Form::close() }}
        </div>
    </article>
@endsection

@section('column_right')

@endsection

@section('cusjs')

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/css/select2.min.css" rel="stylesheet"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.3/js/select2.min.js"></script>

    <script>
        $('#sitehead_select').select2({
            placeholder: "Select Head of Site",
            allowClear: true
        });

        $('#project_select').select2({
            placeholder: "Select Project",
            allowClear: true
        });
    </script>

@endsection


<?php
/**
$siteHead = \DB::select("
SELECT * FROM (
SELECT *,
(
SELECT created_at FROM tasks WHERE tasks.site_head = users.id AND DATE_FORMAT(`tasks`.`created_at`, '%Y-%m-%d') = '2021-03-14'
) AS task_created,
(
SELECT site_head FROM tasks WHERE tasks.site_head = users.id AND DATE_FORMAT(`tasks`.`created_at`, '%Y-%m-%d') = '2021-03-14'
) AS site_head

FROM users WHERE users.role = 2
) AS QQ
WHERE QQ.site_head IS NULL
");
 **/
?>
