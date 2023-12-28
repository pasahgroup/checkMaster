<?php

namespace App\Http\Controllers;

use App\Models\attachment;
use App\Http\Controllers\Controller;
use App\Http\Requests\StoreattachmentRequest;
use App\Http\Requests\UpdateattachmentRequest;

class AttachmentController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \App\Http\Requests\StoreattachmentRequest  $request
     * @return \Illuminate\Http\Response
     */
    public function store(StoreattachmentRequest $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\attachment  $attachment
     * @return \Illuminate\Http\Response
     */
    public function show(attachment $attachment)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\attachment  $attachment
     * @return \Illuminate\Http\Response
     */
    public function edit(attachment $attachment)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \App\Http\Requests\UpdateattachmentRequest  $request
     * @param  \App\Models\attachment  $attachment
     * @return \Illuminate\Http\Response
     */
    public function update(UpdateattachmentRequest $request, attachment $attachment)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\attachment  $attachment
     * @return \Illuminate\Http\Response
     */
    public function destroy(attachment $attachment)
    {
        //
    }
}
