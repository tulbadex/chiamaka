<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;
    protected $guarded = [];

    /* protected $fillables = [
        'user_id',
        'profileImage',
        'profileType',
        'nameOfOrganization',
        'organizationEmail',
        'phoneNumber'
    ]; */
    public function users()
    {
        return $this->belongsTo(User::class);

    }
}
