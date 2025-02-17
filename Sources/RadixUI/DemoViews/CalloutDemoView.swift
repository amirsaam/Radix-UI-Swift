//
//  CalloutDemoView.swift
//  RadixUI
//
//  Created by Amir Mohammadi on 11/28/1403 AP.
//

import SwiftUI

struct CalloutDemoView: View {

    let infoText = "You will need admin privileges to install and access this application."
    let alertText = "Access denied. Please contact the network administrator to view this page."

    var body: some View {
        VStack(spacing: 20) {
            Text(infoText)
                .radixInfoCallout(variant: .surface, color: .grass)
            Text(alertText)
                .radixAlertCallout(variant: .surface)
            Text(infoText)
                .radixInfoCallout(variant: .soft, color: .grass)
            Text(alertText)
                .radixAlertCallout(variant: .soft)
            Text(infoText)
                .radixInfoCallout(variant: .outline, color: .grass)
            Text(alertText)
                .radixAlertCallout(variant: .outline)
        }
    }

}

#Preview {
    CalloutDemoView()
}
