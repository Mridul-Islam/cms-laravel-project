<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateCategoryRequest;
use App\Models\Category;
use Illuminate\Http\Request;

class AdminCategoriesController extends Controller
{

    public function index()
    {
        $categories = Category::orderBy('id', 'desc')->paginate(9);
        return view('admin.categories.index', compact('categories'));
    }


    public function create()
    {
//        return view('admin.categories.create');
    }


    public function store(CreateCategoryRequest $request)
    {
        Category::create($request->all());
        return redirect('admin/categories');
    }


    public function show($id)
    {
        //
    }


    public function edit($id)
    {
        $category = Category::findOrFail($id);
        return view('admin.categories.edit', compact('category'));
    }


    public function update(CreateCategoryRequest $request, $id)
    {
        $category = Category::findOrFail($id);
        $category->update($request->all());
        return redirect('admin/categories');
    }


    public function destroy($id)
    {
        Category::findOrFail($id)->delete();
        return redirect('admin/categories');
    }
}
