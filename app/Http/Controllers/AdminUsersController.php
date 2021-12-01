<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AdminUsersController extends Controller
{

    public function index()
    {
        return view('admin.users.index');
    }


    public function create()
    {
        return "This is create";
    }


    public function store(Request $request)
    {
        //
    }


    public function show($id)
    {
        return 'This is show';
    }


    public function edit($id)
    {
        //
    }


    public function update(Request $request, $id)
    {
        //
    }


    public function destroy($id)
    {
        //
    }
}
