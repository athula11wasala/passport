<?php
namespace App\Services;

use Illuminate\Support\Facades\Config;
use App\Repository\UserRepository;

class CmsService
{
    private  $userRepository;

    /**
     * CmsService constructor.
     * @param UserRepository $userRepository
     */
    public function __construct( UserRepository $userRepository)
    {
        $this->userRepository = $userRepository;
    }

    /**
     * get userinfo
     * @param $data
     * @return \Illuminate\Database\Eloquent\Collection|null
     */
    public function getUserInfo($data){

        return $this->userRepository->getUserInfo($data);
    }

}
