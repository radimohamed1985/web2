@extends('admin.layouts.admin-app')

@section('style')
    <link href="{{ asset('lib/rickshaw/rickshaw.min.css') }}" rel="stylesheet">
    <link href="{{ asset('lib/chartist/chartist.css') }}" rel="stylesheet">
@endsection

@section('content')
    <div class="br-mainpanel">
        {{-- <div class="pd-30"> --}}
            {{-- <h4 class="tx-gray-800 mg-b-5">{{ setting('site_name') }}</h4> --}}
            {{-- <p class="mg-b-0">Do big things with Bracket, the responsive bootstrap 4 admin template.</p> --}}
        {{-- </div> --}}
        <!-- d-flex -->

        <div class="br-pagebody mg-t-5 pd-x-30" >
            <div class="row">
                <div class="col-6">
            <div class="q-card q-card--flat no-shadow" style="border-radius: 8px;background-color:white;height:100%">
                 <div class="q-card__section q-card__section--vert q-py-lg" style="margin-left:30px">
                    <div class="text-h5 text-info"> Greetings admin demo</div>
                </div>
                <hr class="q-separator q-separator--horizontal bg-secandry" aria-orientation="horizontal" style="height: 3px;">

                <div class="q-card__section q-card__section--vert row" style="margin-left:30px">
                    <div class="q-card__section q-card__section--vert full-width col-4">
                        <div class="q-list">
                            <div class="q-item q-item-type row no-wrap">
                            <div class="q-item__section column q-item__section--side justify-center q-item__section--avatar">
                                <div class="q-img q-img--menu" role="img">
                    <div style="padding-bottom: 110.811%;">
                    </div>
                    <div class="q-img__container absolute-full">
                        <img class="q-img__image q-img__image--with-transition q-img__image--loaded" loading="lazy" aria-hidden="true" draggable="false" src="data:image/svg+xml;base64,PHN2ZyBpZD0iR3JvdXBfNjQyIiBkYXRhLW5hbWU9Ikdyb3VwIDY0MiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzcuMzUyIiBoZWlnaHQ9IjQxIiB2aWV3Qm94PSIwIDAgMzcuMzUyIDQxIj4KICA8cGF0aCBpZD0iUGF0aF85ODAyMCIgZGF0YS1uYW1lPSJQYXRoIDk4MDIwIiBkPSJNMzIwLjQ1OCwyODYuMzYxYS4yMTIuMjEyLDAsMCwwLS4yLS4xNDVoLTEuODhsLS41OC0xLjc4N2EuMjExLjIxMSwwLDAsMC0uNCwwbC0uNTgsMS43ODdoLTEuODc5YS4yMTEuMjExLDAsMCwwLS4xMjMuMzgxbDEuNTIsMS4xLS41OCwxLjc4N2EuMjExLjIxMSwwLDAsMCwuMzI1LjIzNmwxLjUyLTEuMSwxLjUyMSwxLjFhLjIwOS4yMDksMCwwLDAsLjI0NywwLC4yMTIuMjEyLDAsMCwwLC4wNzctLjIzNmwtLjU4MS0xLjc4NywxLjUyLTEuMUEuMjEyLjIxMiwwLDAsMCwzMjAuNDU4LDI4Ni4zNjFaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjk4LjkyIC0yNjMuNDM0KSIgZmlsbD0iIzJkMzc0ZiIvPgogIDxwYXRoIGlkPSJQYXRoXzk4MDIxIiBkYXRhLW5hbWU9IlBhdGggOTgwMjEiIGQ9Ik0zNjguNTA3LDM4NC42NTNhLjIxMS4yMTEsMCwwLDAsLjIyNi0uMWwuOTQtMS42MjgsMS44MzcuMzkxYS4yMTEuMjExLDAsMCwwLC4yLS4zNDhsLTEuMjU3LTEuNC45MzktMS42MjdhLjIxMS4yMTEsMCwwLDAtLjI2OC0uM2wtMS43MTcuNzY0LTEuMjU4LTEuNGEuMjExLjIxMSwwLDAsMC0uMzY3LjE2M2wuMiwxLjg2OS0xLjcxNy43NjRhLjIxLjIxLDAsMCwwLS4xLjA4Ny4yMS4yMSwwLDAsMCwuMTM5LjMxMWwxLjgzOC4zOTEuMiwxLjg2OUEuMjEzLjIxMywwLDAsMCwzNjguNTA3LDM4NC42NTNaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzQ2LjE1IC0zNTAuMzk0KSIgZmlsbD0iIzJkMzc0ZiIvPgogIDxwYXRoIGlkPSJQYXRoXzk4MDIyIiBkYXRhLW5hbWU9IlBhdGggOTgwMjIiIGQ9Ik0yNjUuMDg4LDM3OS42ODhhLjIxMS4yMTEsMCwwLDAtLjAyNi4yNDdsLjk0LDEuNjI4LTEuMjU4LDEuNGEuMjExLjIxMSwwLDAsMCwuMi4zNDhsMS44MzgtLjM5MS45MzksMS42MjdhLjIxMS4yMTEsMCwwLDAsLjM5Mi0uMDgzbC4yLTEuODY5LDEuODM3LS4zOWEuMjExLjIxMSwwLDAsMCwuMDQzLS40bC0xLjcxNy0uNzY1LjItMS44NjlhLjIxNS4yMTUsMCwwLDAtLjAyNy0uMTI3LjIwOS4yMDksMCwwLDAtLjEtLjA4Ny4yMTEuMjExLDAsMCwwLS4yNDMuMDUxbC0xLjI1NywxLjQtMS43MTctLjc2NGEuMjExLjIxMSwwLDAsMC0uMjQyLjA1MVoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yNTIuOTUzIC0zNTAuMzg3KSIgZmlsbD0iIzJkMzc0ZiIvPgogIDxwYXRoIGlkPSJQYXRoXzk4MDIzIiBkYXRhLW5hbWU9IlBhdGggOTgwMjMiIGQ9Ik0yMTMuMjcyLDI1NC4yMTdjMS4wMjQtLjc0NiwyLjc5NC0uNzgzLDMuNTQtMS44MDhzLjIzMi0yLjcwNS42MjgtMy45MjRjLjM4Mi0xLjE3NiwxLjgtMi4yNCwxLjgtMy41NDRzLTEuNDE2LTIuMzY3LTEuOC0zLjU0M2MtLjQtMS4yMi4xMTEtMi45MS0uNjI4LTMuOTI0cy0yLjUxNS0xLjA2Mi0zLjU0LTEuODA4LTEuNTkyLTIuNDE0LTIuODEyLTIuODA5YTEuODczLDEuODczLDAsMCwwLS41ODMtLjA4NmMtMS4wNTMsMC0yLjI0OC43MDgtMy4zNDMuNzA4cy0yLjI5MS0uNzA4LTMuMzQzLS43MDhhMS45LDEuOSwwLDAsMC0uNTgzLjA4NmMtMS4yMTkuNC0xLjgsMi4wNzEtMi44MTEsMi44MDlzLTIuNzk0Ljc4My0zLjU0LDEuODA4LS4yMzIsMi43MDUtLjYyOCwzLjkyNGMtLjM4MiwxLjE3Ni0xLjgsMi4yNC0xLjgsMy41NDNzMS40MTYsMi4zNjcsMS44LDMuNTQ0Yy40LDEuMjItLjExMSwyLjkxLjYyOCwzLjkyNHMyLjUxNSwxLjA2MSwzLjU0LDEuODA3LDEuNTkyLDIuNDE0LDIuODExLDIuODFhMS44NzksMS44NzksMCwwLDAsLjU4My4wODZjMS4wNTIsMCwyLjI0OS0uNzA4LDMuMzQzLS43MDhzMi4yOTEuNzA4LDMuMzQzLjcwOGExLjg5NCwxLjg5NCwwLDAsMCwuNTgzLS4wODZDMjExLjY4LDI1Ni42MywyMTIuMjU3LDI1NC45NTUsMjEzLjI3MiwyNTQuMjE3Wm0tNi43MzgsMS4yMTlhMTAuNDk1LDEwLjQ5NSwwLDEsMSwxMC40OTQtMTAuNUExMC40OTUsMTAuNDk1LDAsMCwxLDIwNi41MzQsMjU1LjQzNloiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xODcuODU4IC0yMTYuMTEyKSIgZmlsbD0iIzJkMzc0ZiIvPgogIDxwYXRoIGlkPSJQYXRoXzk4MDI0IiBkYXRhLW5hbWU9IlBhdGggOTgwMjQiIGQ9Ik0yNDEuNjkzLDM3LjQxNSwyNDYuOTcxLDI4aC0yMC4wMmw1LjI3Nyw5LjQxNVoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMTguMjg1IC0yOCkiIGZpbGw9IiMyZDM3NGYiLz4KICA8cGF0aCBpZD0iUGF0aF85ODAyNSIgZGF0YS1uYW1lPSJQYXRoIDk4MDI1IiBkPSJNMzc3LjkzOSw0NS42NGEyLjgzNywyLjgzNywwLDAsMSwuODczLjEzMiw0LjYzLDQuNjMsMCwwLDEsMi4xNTksMS45LDUuMDQ2LDUuMDQ2LDAsMCwwLC45MTQsMS4wNDYsNS4xMTIsNS4xMTIsMCwwLDAsMS4zLjU1OCw2LjE0LDYuMTQsMCwwLDEsMS45MzEuOTE2bDcuOTIxLTE0LjEzM2EyLjE1MywyLjE1MywwLDAsMCwuMjA4LTEuMjM0Yy0uMTI2LS41NDgtLjg3Mi0uOTMtLjg3Mi0uOTNsLTYuNzg1LTMuOC04LjgxMSwxNS43MjJhNC42MjcsNC42MjcsMCwwLDEsMS4xNjYtLjE3WiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTM1NS45MTkgLTI5LjkxOSkiIGZpbGw9IiMyZDM3NGYiLz4KICA8cGF0aCBpZD0iUGF0aF85ODAyNiIgZGF0YS1uYW1lPSJQYXRoIDk4MDI2IiBkPSJNMTM1Ljc1Myw0NS42MzdhMi44MywyLjgzLDAsMCwwLS44NzMuMTMyLDQuNjMsNC42MywwLDAsMC0yLjE1OSwxLjksNS4wNTUsNS4wNTUsMCwwLDEtLjkxNCwxLjA0Niw1LjExOSw1LjExOSwwLDAsMS0xLjMuNTU4LDYuMTM4LDYuMTM4LDAsMCwwLTEuOTMxLjkxNmwtNy45MjItMTQuMTM1YTIuMTUxLDIuMTUxLDAsMCwxLS4yMDgtMS4yMzRjLjEyNi0uNTQ4Ljg3Mi0uOTMuODcyLS45M2w2Ljc4NS0zLjgsOC44MTIsMTUuNzIyYTQuNjE1LDQuNjE1LDAsMCwwLTEuMTY2LS4xNzFaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTIwLjQyIC0yOS45MTYpIiBmaWxsPSIjMmQzNzRmIi8+Cjwvc3ZnPgo=" style="object-fit: contain; object-position: 50% 50%;">
                    </div>
                    <div class="q-img__content absolute-full q-anchor--skip"></div>
                </div></div>
                <div class="q-item__section column q-item__section--main justify-center">
                    <div class="q-item__label text-h6" style="color: rgb(112, 112, 112);">Brokerage Package</div><div class="q-item__label text-subtitle1" style="overflow: hidden; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2;"><span class="text-weight-bold">Bronze </span></div></div></div></div></div><hr class="  "  style="width: 2px; margin-right: 8px; margin-left: 8px;border-left:2px solid #EEE;height:150px"><div class="q-card__section q-card__section--vert col-4 full-width"><div class="q-list"><div class="q-item q-item-type row no-wrap"><div class="q-item__section column q-item__section--side justify-center q-item__section--avatar"><div class="q-img q-img--menu" role="img"><div style="padding-bottom: 110.811%;"></div><div class="q-img__container absolute-full"><img class="q-img__image q-img__image--with-transition q-img__image--loaded" loading="lazy" aria-hidden="true" draggable="false" src="data:image/svg+xml;base64,PHN2ZyBpZD0iR3JvdXBfNjQyIiBkYXRhLW5hbWU9Ikdyb3VwIDY0MiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iMzcuMzUyIiBoZWlnaHQ9IjQxIiB2aWV3Qm94PSIwIDAgMzcuMzUyIDQxIj4KICA8cGF0aCBpZD0iUGF0aF85ODAyMCIgZGF0YS1uYW1lPSJQYXRoIDk4MDIwIiBkPSJNMzIwLjQ1OCwyODYuMzYxYS4yMTIuMjEyLDAsMCwwLS4yLS4xNDVoLTEuODhsLS41OC0xLjc4N2EuMjExLjIxMSwwLDAsMC0uNCwwbC0uNTgsMS43ODdoLTEuODc5YS4yMTEuMjExLDAsMCwwLS4xMjMuMzgxbDEuNTIsMS4xLS41OCwxLjc4N2EuMjExLjIxMSwwLDAsMCwuMzI1LjIzNmwxLjUyLTEuMSwxLjUyMSwxLjFhLjIwOS4yMDksMCwwLDAsLjI0NywwLC4yMTIuMjEyLDAsMCwwLC4wNzctLjIzNmwtLjU4MS0xLjc4NywxLjUyLTEuMUEuMjEyLjIxMiwwLDAsMCwzMjAuNDU4LDI4Ni4zNjFaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMjk4LjkyIC0yNjMuNDM0KSIgZmlsbD0iIzJkMzc0ZiIvPgogIDxwYXRoIGlkPSJQYXRoXzk4MDIxIiBkYXRhLW5hbWU9IlBhdGggOTgwMjEiIGQ9Ik0zNjguNTA3LDM4NC42NTNhLjIxMS4yMTEsMCwwLDAsLjIyNi0uMWwuOTQtMS42MjgsMS44MzcuMzkxYS4yMTEuMjExLDAsMCwwLC4yLS4zNDhsLTEuMjU3LTEuNC45MzktMS42MjdhLjIxMS4yMTEsMCwwLDAtLjI2OC0uM2wtMS43MTcuNzY0LTEuMjU4LTEuNGEuMjExLjIxMSwwLDAsMC0uMzY3LjE2M2wuMiwxLjg2OS0xLjcxNy43NjRhLjIxLjIxLDAsMCwwLS4xLjA4Ny4yMS4yMSwwLDAsMCwuMTM5LjMxMWwxLjgzOC4zOTEuMiwxLjg2OUEuMjEzLjIxMywwLDAsMCwzNjguNTA3LDM4NC42NTNaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzQ2LjE1IC0zNTAuMzk0KSIgZmlsbD0iIzJkMzc0ZiIvPgogIDxwYXRoIGlkPSJQYXRoXzk4MDIyIiBkYXRhLW5hbWU9IlBhdGggOTgwMjIiIGQ9Ik0yNjUuMDg4LDM3OS42ODhhLjIxMS4yMTEsMCwwLDAtLjAyNi4yNDdsLjk0LDEuNjI4LTEuMjU4LDEuNGEuMjExLjIxMSwwLDAsMCwuMi4zNDhsMS44MzgtLjM5MS45MzksMS42MjdhLjIxMS4yMTEsMCwwLDAsLjM5Mi0uMDgzbC4yLTEuODY5LDEuODM3LS4zOWEuMjExLjIxMSwwLDAsMCwuMDQzLS40bC0xLjcxNy0uNzY1LjItMS44NjlhLjIxNS4yMTUsMCwwLDAtLjAyNy0uMTI3LjIwOS4yMDksMCwwLDAtLjEtLjA4Ny4yMTEuMjExLDAsMCwwLS4yNDMuMDUxbC0xLjI1NywxLjQtMS43MTctLjc2NGEuMjExLjIxMSwwLDAsMC0uMjQyLjA1MVoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yNTIuOTUzIC0zNTAuMzg3KSIgZmlsbD0iIzJkMzc0ZiIvPgogIDxwYXRoIGlkPSJQYXRoXzk4MDIzIiBkYXRhLW5hbWU9IlBhdGggOTgwMjMiIGQ9Ik0yMTMuMjcyLDI1NC4yMTdjMS4wMjQtLjc0NiwyLjc5NC0uNzgzLDMuNTQtMS44MDhzLjIzMi0yLjcwNS42MjgtMy45MjRjLjM4Mi0xLjE3NiwxLjgtMi4yNCwxLjgtMy41NDRzLTEuNDE2LTIuMzY3LTEuOC0zLjU0M2MtLjQtMS4yMi4xMTEtMi45MS0uNjI4LTMuOTI0cy0yLjUxNS0xLjA2Mi0zLjU0LTEuODA4LTEuNTkyLTIuNDE0LTIuODEyLTIuODA5YTEuODczLDEuODczLDAsMCwwLS41ODMtLjA4NmMtMS4wNTMsMC0yLjI0OC43MDgtMy4zNDMuNzA4cy0yLjI5MS0uNzA4LTMuMzQzLS43MDhhMS45LDEuOSwwLDAsMC0uNTgzLjA4NmMtMS4yMTkuNC0xLjgsMi4wNzEtMi44MTEsMi44MDlzLTIuNzk0Ljc4My0zLjU0LDEuODA4LS4yMzIsMi43MDUtLjYyOCwzLjkyNGMtLjM4MiwxLjE3Ni0xLjgsMi4yNC0xLjgsMy41NDNzMS40MTYsMi4zNjcsMS44LDMuNTQ0Yy40LDEuMjItLjExMSwyLjkxLjYyOCwzLjkyNHMyLjUxNSwxLjA2MSwzLjU0LDEuODA3LDEuNTkyLDIuNDE0LDIuODExLDIuODFhMS44NzksMS44NzksMCwwLDAsLjU4My4wODZjMS4wNTIsMCwyLjI0OS0uNzA4LDMuMzQzLS43MDhzMi4yOTEuNzA4LDMuMzQzLjcwOGExLjg5NCwxLjg5NCwwLDAsMCwuNTgzLS4wODZDMjExLjY4LDI1Ni42MywyMTIuMjU3LDI1NC45NTUsMjEzLjI3MiwyNTQuMjE3Wm0tNi43MzgsMS4yMTlhMTAuNDk1LDEwLjQ5NSwwLDEsMSwxMC40OTQtMTAuNUExMC40OTUsMTAuNDk1LDAsMCwxLDIwNi41MzQsMjU1LjQzNloiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xODcuODU4IC0yMTYuMTEyKSIgZmlsbD0iIzJkMzc0ZiIvPgogIDxwYXRoIGlkPSJQYXRoXzk4MDI0IiBkYXRhLW5hbWU9IlBhdGggOTgwMjQiIGQ9Ik0yNDEuNjkzLDM3LjQxNSwyNDYuOTcxLDI4aC0yMC4wMmw1LjI3Nyw5LjQxNVoiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0yMTguMjg1IC0yOCkiIGZpbGw9IiMyZDM3NGYiLz4KICA8cGF0aCBpZD0iUGF0aF85ODAyNSIgZGF0YS1uYW1lPSJQYXRoIDk4MDI1IiBkPSJNMzc3LjkzOSw0NS42NGEyLjgzNywyLjgzNywwLDAsMSwuODczLjEzMiw0LjYzLDQuNjMsMCwwLDEsMi4xNTksMS45LDUuMDQ2LDUuMDQ2LDAsMCwwLC45MTQsMS4wNDYsNS4xMTIsNS4xMTIsMCwwLDAsMS4zLjU1OCw2LjE0LDYuMTQsMCwwLDEsMS45MzEuOTE2bDcuOTIxLTE0LjEzM2EyLjE1MywyLjE1MywwLDAsMCwuMjA4LTEuMjM0Yy0uMTI2LS41NDgtLjg3Mi0uOTMtLjg3Mi0uOTNsLTYuNzg1LTMuOC04LjgxMSwxNS43MjJhNC42MjcsNC42MjcsMCwwLDEsMS4xNjYtLjE3WiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTM1NS45MTkgLTI5LjkxOSkiIGZpbGw9IiMyZDM3NGYiLz4KICA8cGF0aCBpZD0iUGF0aF85ODAyNiIgZGF0YS1uYW1lPSJQYXRoIDk4MDI2IiBkPSJNMTM1Ljc1Myw0NS42MzdhMi44MywyLjgzLDAsMCwwLS44NzMuMTMyLDQuNjMsNC42MywwLDAsMC0yLjE1OSwxLjksNS4wNTUsNS4wNTUsMCwwLDEtLjkxNCwxLjA0Niw1LjExOSw1LjExOSwwLDAsMS0xLjMuNTU4LDYuMTM4LDYuMTM4LDAsMCwwLTEuOTMxLjkxNmwtNy45MjItMTQuMTM1YTIuMTUxLDIuMTUxLDAsMCwxLS4yMDgtMS4yMzRjLjEyNi0uNTQ4Ljg3Mi0uOTMuODcyLS45M2w2Ljc4NS0zLjgsOC44MTIsMTUuNzIyYTQuNjE1LDQuNjE1LDAsMCwwLTEuMTY2LS4xNzFaIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMTIwLjQyIC0yOS45MTYpIiBmaWxsPSIjMmQzNzRmIi8+Cjwvc3ZnPgo=" style="object-fit: contain; object-position: 50% 50%;">
                </div>
                <div class="q-img__content absolute-full q-anchor--skip"></div></div></div>
                <div class="q-item__section column q-item__section--main justify-center col-5">
                    <div class="q-item__label text-h6" style="color: rgb(112, 112, 112);">Brokerage Balance</div>
                    <div class="q-item__label text-subtitle1" style="overflow: hidden; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp: 2;"><span class="text-weight-bold">$0.00 </span></div>
            </div></div></div></div></div>
            <div class="row" style="margin-left:30px">
                <div class="col-12 q-px-md" style="margin-top:30px"><div>
                    <label class="q-field row no-wrap items-start q-field--outlined q-input q-field--float q-field--labeled q-field--dense" for="f_492b2f31-e79f-4fac-8053-8b416447fe73"><!----><div class="q-field__inner relative-position col self-stretch">
                    <div class="q-field__control relative-position row no-wrap bg-white text-white" tabindex="-1"><div class="q-field__control-container col relative-position row no-wrap q-anchor--skip">
                        <input class="q-field__native q-placeholder col-12" tabindex="0" aria-label="Company Email" name="email" id="f_492b2f31-e79f-4fac-8053-8b416447fe73" type="text">
                        <div class="q-field__label no-pointer-events absolute ellipsis">Company Email</div><!----></div></div><!----></div><!----></label></div></div>
                    <div class="col-12 q-pa-md"><div class="text-subtitle1 q-pb-sm"> ENTER AMOUNT </div><div> Please Specify the amount you would like to deposit into your Brokerage account through BTCPAY </div><form method="POST" action="https://cryptopaymax.pro/apps/36TJK1ZVv6jV9o2XvoHXGsV2aJPj/pos"><input type="hidden" name="orderId" value="1"><input type="hidden" name="userId" value="1"><input type="hidden" name="plan" value="brokerage plan test">
                        <input type="hidden" name="notificationUrl" value="https://demo.livetraderengine.com"><div class="q-gutter-sm q-pt-sm"><button class="q-btn q-btn-item non-selectable no-outline q-btn--standard q-btn--rectangle bg-info text-white q-btn--actionable q-focusable q-hoverable text-dark" tabindex="0" type="button"><span class="q-focus-helper"></span><span class="q-btn__content text-center col items-center q-anchor--skip justify-center row"><span class="block">$500</span></span></button><button class="q-btn q-btn-item non-selectable no-outline q-btn--standard q-btn--rectangle bg-info text-white q-btn--actionable q-focusable q-hoverable text-dark" tabindex="0" type="button"><span class="q-focus-helper"></span><span class="q-btn__content text-center col items-center q-anchor--skip justify-center row"><span class="block">$1000</span></span></button><button class="q-btn q-btn-item non-selectable no-outline q-btn--standard q-btn--rectangle bg-positive text-white q-btn--actionable q-focusable q-hoverable text-dark" tabindex="0" type="button"><span class="q-focus-helper" tabindex="-1"></span><span class="q-btn__content text-center col items-center q-anchor--skip justify-center row"><span class="block">$2000</span></span></button><button class="q-btn q-btn-item non-selectable no-outline q-btn--standard q-btn--rectangle bg-info text-white q-btn--actionable q-focusable q-hoverable text-dark" tabindex="0" type="button"><span class="q-focus-helper"></span><span class="q-btn__content text-center col items-center q-anchor--skip justify-center row"><span class="block">$5000</span></span></button><button class="q-btn q-btn-item non-selectable no-outline q-btn--standard q-btn--rectangle bg-info text-white q-btn--actionable q-focusable q-hoverable text-dark" tabindex="0" type="button"><span class="q-focus-helper"></span><span class="q-btn__content text-center col items-center q-anchor--skip justify-center row"><span class="block">$10000</span></span></button></div><div class="row q-pt-md q-col-gutter-sm"><div class="col"><div><label class="q-field row no-wrap items-start q-field--outlined q-input q-field--float q-field--dense" for="f_823dc80d-fa9a-4180-b565-60cb464dd984"><!----><div class="q-field__inner relative-position col self-stretch"><div class="q-field__control relative-position row no-wrap bg-white text-white" tabindex="-1">
                    <div class="q-field__prepend q-field__marginal row no-wrap items-center"> $ </div><div class="q-field__control-container col relative-position row no-wrap q-anchor--skip" style="margin-left:30px">
                    <input class="q-field__native q-placeholder" tabindex="0" name="amount" id="f_823dc80d-fa9a-4180-b565-60cb464dd984" type="number"><!----></div></div><!----></div><!----></label></div></div><div class="col-4"><button class="q-btn q-btn-item non-selectable no-outline q-btn--standard q-btn--rectangle bg-positive text-white q-btn--actionable q-focusable q-hoverable q-btn--no-uppercase full-width q-py-sm" tabindex="0" type="submit"><span class="q-focus-helper" tabindex="-1"></span><span class="q-btn__content text-center col items-center q-anchor--skip justify-center row"><span class="block">Top up</span><i class="q-icon on-right notranslate material-icons" aria-hidden="true" role="img">arrow_forward</i></span></button></div><div class="col"></div></div></form></div></div></div>
                </div>
                <div class="col-6" style="padding:0px;hieght:100%">

           
            <div class="row row-sm">

                <div class="col-sm-6 col-xl-6 mt-2">
                    <div class="bg-primary rounded overflow-hidden">
                        <a href="{{ route('admin.users.index') }}">

                            <div class="pd-25 d-flex align-items-center">
                                <i class=" fa fa-users tx-60 lh-0 tx-white op-7"></i>
                                <div class="mg-l-20">
                                    <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">Customers
                                    </p>
                                    <p class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1">{{ $users }}</p>
                                    {{-- <span class="tx-11 tx-roboto tx-white-6">Total Job Posted</span> --}}
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-sm-6 col-xl-6 mt-2">
                    <div class="bg-success rounded overflow-hidden">
                        <a href="{{ route('admin.online-users') }}">

                            <div class="pd-25 d-flex align-items-center">
                                <i class="ion ion-person-add tx-60 lh-0 tx-white op-7"></i>
                                <div class="mg-l-20">
                                    <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">Online
                                        Customers</p>
                                    <p class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1">{{ $online_users }}</p>
                                    {{-- <span class="tx-11 tx-roboto tx-white-6">Total Job Posted</span> --}}
                                </div>
                            </div>
                        </a>
                    </div>
                </div>

                @if (!auth()->user()->hasRole(['retention']))
                    <div class="col-sm-6 col-xl-6 mt-2">
                        <div class="bg-br-primary rounded overflow-hidden">
                            <a href="{{ route('admin.users.leads') }}">

                                <div class="pd-25 d-flex align-items-center">
                                    <i class="ion ion-ios-telephone-outline tx-60 lh-0 tx-white op-7"></i>
                                    <div class="mg-l-20">
                                        <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">Leads
                                        </p>
                                        <p class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1">{{ $leads }}</p>
                                        {{-- <span class="tx-11 tx-roboto tx-white-6">Total Job Posted</span> --}}
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div>
                @endif

                @if (auth()->user()->hasRole(['superadmin']))
                    <div class="col-sm-6 col-xl-6 mg-t-20 mt-2">
                        <div class="bg-danger rounded overflow-hidden">
                            <a href="{{ route('admin.withdrawals.index') }}?status=0">
                                <div class="pd-25 d-flex align-items-center">
                                    <i class="ion ion-ios-calculator-outline tx-60 lh-0 tx-white op-7"></i>
                                    <div class="mg-l-20">
                                        <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">
                                            Withdrawals [Pending]</p>
                                        <p class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1">{{ $p_withdrawals }}</p>
                                        {{-- <span class="tx-11 tx-roboto tx-white-6">$390,212 before tax</span> --}}
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div><!-- col-3 -->

                    <div class="col-sm-6 col-xl-6 mg-t-20 mt-2">
                        <div class="bg-br-primary rounded overflow-hidden">
                            <a href="{{ route('admin.deposits.index') }}?status=0">
                                <div class="pd-25 d-flex align-items-center">
                                    <i class="ion ion-cash tx-60 lh-0 tx-white op-7"></i>
                                    <div class="mg-l-20">
                                        <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">
                                            Deposits [Pending]</p>
                                        <p class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1">{{ $p_deposits }}</p>
                                        {{-- <span class="tx-11 tx-roboto tx-white-6">65.45% on average time</span> --}}
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div><!-- col-3 -->

                    <div class="col-sm-6 col-xl-6 mg-t-20 mt-2">
                        <div class="bg-warning rounded overflow-hidden">
                            <a href="{{ route('admin.users.ids') }}">
                                <div class="pd-25 d-flex align-items-center">
                                    <i class="ion ion-ios-list-outline tx-60 lh-0 tx-white op-7"></i>
                                    <div class="mg-l-20">
                                        <p class="tx-10 tx-spacing-1 tx-mont tx-medium tx-uppercase tx-white-8 mg-b-10">KYC
                                            Verifications</p>
                                        {{-- <p class="tx-24 tx-white tx-lato tx-bold mg-b-2 lh-1">{{ $a_deposits }}</p> --}}
                                        {{-- <span class="tx-11 tx-roboto tx-white-6">23% average duration</span> --}}
                                    </div>
                                </div>
                            </a>
                        </div>
                    </div><!-- col-3 -->
                @endif



            </div><!-- row -->
        </div>
    </div>
            <div class="row row-sm mg-t-20">

            </div><!-- row -->

        </div><!-- br-pagebody -->
    @endsection

    @section('js')
        <script src="{{ asset('lib/chartist/chartist.js') }}"></script>
        <script src="{{ asset('lib/jquery.sparkline.bower/jquery.sparkline.min.js') }}"></script>
        <script src="{{ asset('lib/d3/d3.js') }}"></script>
        <script src="{{ asset('lib/rickshaw/rickshaw.min.js') }}"></script>
        <script src="{{ asset('js/ResizeSensor.js') }}"></script>
        <script src="{{ asset('js/dashboard.js') }}"></script>
        <script>
            $(function() {
                'use strict'

                // FOR DEMO ONLY
                // menu collapsed by default during first page load or refresh with screen
                // having a size between 992px and 1299px. This is intended on this page only
                // for better viewing of widgets demo.
                $(window).resize(function() {
                    minimizeMenu();
                });

                minimizeMenu();

                function minimizeMenu() {
                    if (window.matchMedia('(min-width: 992px)').matches && window.matchMedia('(max-width: 1299px)')
                        .matches) {
                        // show only the icons and hide left menu label by default
                        $('.menu-item-label,.menu-item-arrow').addClass('op-lg-0-force d-lg-none');
                        $('body').addClass('collapsed-menu');
                        $('.show-sub + .br-menu-sub').slideUp();
                    } else if (window.matchMedia('(min-width: 1300px)').matches && !$('body').hasClass(
                            'collapsed-menu')) {
                        $('.menu-item-label,.menu-item-arrow').removeClass('op-lg-0-force d-lg-none');
                        $('body').removeClass('collapsed-menu');
                        $('.show-sub + .br-menu-sub').slideDown();
                    }
                }
            });
        </script>
    @endsection
