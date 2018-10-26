<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class AdminLoginPost extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
        'username' => 'required|max:255',
        'password' => 'required',
        ];
    }

    // 自定义错误消息
    public function messages()
    {
        return [
            'username.required' => 'ww',
            'password.required'  => 'qq',
        ];
    }









}
