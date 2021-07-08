<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class addChild extends Model
{
    use HasFactory;
    protected $fillable = [
        'childFullName',
        'dateOfBirth',
        'gender',
        'relationship',
        'medRecord'
    ];
}
