require 'hiyoko/tmpl'

class ViewControllerSwift < Tmpl
  @code =<<"EOS"
//
//  ViewController.swift
//  <%= project_name %>
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}
EOS
end
