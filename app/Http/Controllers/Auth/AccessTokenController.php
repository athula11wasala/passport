<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Repository\UserRepository;
use Illuminate\Http\Request;
use Carbon\Carbon;
use App\User;
use Illuminate\Support\Facades\Response;
use App\Traits\AccessTokenValidator;
use Illuminate\Support\Facades\Input;
use App\Dtech\Helper;
use App\Services\CmsService;
use Illuminate\Support\Facades\Config;
use App\Traits\ApiResponser;
use Illuminate\Http\Response as IlluminateResponse;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request as res;

class AccessTokenController extends Controller
{
    use AccessTokenValidator;
    use ApiResponser;
    private $cmsService;

    public function __construct(CmsService $cmsService){
        $this->cmsService = $cmsService;
    }
    /**
     * Create user
     *
     * @param  [string] name
     * @param  [string] email
     * @param  [string] password
     * @param  [string] password_confirmation
     * @return [string] message
     */
    public function signup(Request $request)
    {
        $validator = $validator = $this->accessTokenValidate(Input::all(), 'Signup');
        if ($validator->passes()) {
            $user = new User([
                'name' => $request->name,
                'email' => $request->email,
                'password' => bcrypt($request->password)
            ]);
            $user->save();
            return $this->successResponse([
                'message' => __('messages.registration_success')
            ], IlluminateResponse::HTTP_CREATED
            );
        } else {
            return $this->errorResponse(
                 Helper::customErrorMsg($validator->messages()));
        }

    }

    /**
     * Login user and create token
     *
     * @param  [string] email
     * @param  [string] password
     * @param  [boolean] remember_me
     * @return [string] access_token
     * @return [string] token_type
     * @return [string] expires_at
     */
    public function login(Request $request)
    {
        $validator = $this->accessTokenValidate(Input::all(), 'login');
        if ($validator->passes()) {
            $credentials = request(['email', 'password']);
            if (!Auth::attempt($credentials))
                return $this->errorResponse(
                     'Unauthorized'
                ,IlluminateResponse::HTTP_UNAUTHORIZED);
            $user = $request->user();
            $tokenResult = $user->createToken('Personal Access Token');
            $token = $tokenResult->token;
            if ($request->remember_me)
                $token->expires_at = Carbon::now()->addWeeks(1);
            $token->save();
            return $this->successResponse([
                    'access_token' => $tokenResult->accessToken,
                    'token_type' => Config::get('custom_config.TOKEN_type'),
                    'expires_at' => Carbon::parse(
                        $tokenResult->token->expires_at
                    )->toDateTimeString()
                ]
            );
        } else {
            return $this->errorResponse(
                 Helper::customErrorMsg($validator->messages())
           );
        }
    }

    /**
     * Logout user (Revoke the token)
     *
     * @return [string] message
     */
    public function logout(Request $request)
    {

        $request->user()->token()->revoke();
        return $this->successResponse([
            'message' => __('messages.logout_success')
        ]);
    }

    /**
     * Get the authenticated User
     *
     * @return [json] user object
     */
    public function user(Request $request)
    {
      return $this->successResponse(
          $this->cmsService->getUserInfo($request->all()),
          IlluminateResponse::HTTP_CREATED
            );
    }
}
