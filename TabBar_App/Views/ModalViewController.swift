//
//  ModalViewController.swift
//  TabBar_App
//
//  Created by 深見龍一 on 2019/12/20.
//  Copyright © 2019 深見龍一. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ModalViewController: UIViewController {
    private let disposeBag = DisposeBag()
    @IBOutlet weak var dismissBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "モーダル遷移先"
        self.bind()
    }
    
    private func bind()
    {
        self.dismissBtn.rx.tap
        .subscribe { [unowned self] _ in
            self.dismiss(animated: true, completion: nil)
        }
        .disposed(by: self.disposeBag)

    }
}
