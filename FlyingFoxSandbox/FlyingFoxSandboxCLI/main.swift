//
//  main.swift
//  FlyingFoxSandboxCLI
//
//  Created by André Jacobs on 15/02/2022.
//

import Foundation
import FlyingFox

let server = HTTPServer(port: 8080)
let task = Task { try await server.start() }

sleep(10)

task.cancel()

