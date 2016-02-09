//
//  CreateUserModels.swift
//  BabyNamesv2
//
//  Created by Felipe Caldas on 7/02/2016.
//  Copyright (c) 2016 FunkApps FMC. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

struct CreateUserRequest
{
    var id:String?
    var firstName:String
    var email:String
    var password:String
}

struct CreateUserResponse
{
    var error: Bool
    var firstName: String?
}

struct CreateUserViewModel
{
    var firstName:String
}

struct CreateUser_CreateUser_Response
{
   
}