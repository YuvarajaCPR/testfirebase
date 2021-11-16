//
//  SingleFlutterViewController.swift
//  firetestios
//
//  Created by Yuvaraja CPR on 12/11/21.
//
import Flutter

@objc
class SingleFlutterViewController: FlutterViewController {

    @objc init(withEntrypoint entryPoint: String?) {
        let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
        
        
        let newEngine = appDelegate.flutterEngineGroup.makeEngine(withEntrypoint: entryPoint, libraryURI: nil )
    

        super.init(engine: newEngine, nibName: nil, bundle: nil)
    }

    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
