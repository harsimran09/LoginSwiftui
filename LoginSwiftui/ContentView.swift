//
//  ContentView.swift
//  LoginSwiftui
//
//  Created by ITRS-1519 on 28/05/22.
//

import SwiftUI

struct Profile {
    var name: String
    var jobTitle: String
    var emailAddress: String
    var profilePicture: String
}

struct ProfilePicture: View {
    var imageName: String
    var body: some View {
        Image(imageName)
            .resizable()
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .shadow(radius: 10)
    }
}

struct EmailAddress: View {
    var address: String

    var body: some View {
        HStack(alignment: .firstTextBaseline) {
            Image(systemName: "envelope")
            Text(address)
        }
    }
}

struct PersonalDetails: View {
    var profile: Profile

    var body: some View {
        VStack(alignment: .leading) {
            Text(profile.name)
                .font(.largeTitle)
                .foregroundColor(.primary)
            Text(profile.jobTitle)
                .foregroundColor(.secondary)
            EmailAddress(address: profile.emailAddress)
        }
    }
}

struct ProfileView: View {
    var profile: Profile

    var body: some View {
        HStack(spacing: 10) {
            Spacer()
            ProfilePicture(imageName: profile.profilePicture)
            PersonalDetails(profile: profile)
            Spacer()
        }
    }
}

struct bio: View {
    var body: some View {
        Text("Hello I am Harsimran Kaur, welcome to my page.\n.....Thanks for watching, See you soon!")
            .padding(.horizontal).font(.caption).foregroundColor(.gray)
            .foregroundColor(.secondary)
            .multilineTextAlignment(.center)
    }
}

struct ContentView: View {
    let profile = Profile(name: "Harsimran Kaur", jobTitle: "Software Developer", emailAddress: "h_kaur9@gmail.com", profilePicture: "topIcon")
    var body: some View {
        VStack {
            ProfileView(profile: profile)
            Divider().padding(.horizontal)
            bio()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
