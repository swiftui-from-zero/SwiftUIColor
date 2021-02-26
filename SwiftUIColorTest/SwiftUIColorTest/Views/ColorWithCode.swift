//
//  Created by Zilin Zhu on 2021/2/19.
//

import SwiftUI

struct ColorWithCode: View {
    let code: String
    let color: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(code)
                .font(.custom("Menlo", size: 18))
            color
        }
    }
}
