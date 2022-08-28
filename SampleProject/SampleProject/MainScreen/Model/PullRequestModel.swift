//
//  PullRequestModel.swift
//  SampleProject
//
//  Created by heeba khan on 28/08/22.
//

import Foundation

struct PullRequestData {
    let url: String
    let id: Int
    let nodeID: String
    let htmlURL: String
    let diffURL: String
    let patchURL: String
    let issueURL: String
    let number: Int
    let state: String
    let locked: Bool
    let title: String
    let user: User
    let body: String
    let createdAt, updatedAt: Date
    let closedAt, mergedAt: NSNull
    let mergeCommitSHA: String
    let assignee: NSNull
    let assignees, requestedReviewers, requestedTeams, labels: [Any?]
    let milestone: NSNull
    let draft: Bool
    let commitsURL, reviewCommentsURL: String
    let reviewCommentURL: String
    let commentsURL, statusesURL: String
    let head, base: Base
    let links: Links
    let authorAssociation: String
    let autoMerge, activeLockReason: NSNull
}

// MARK: - Base
struct Base {
    let label, ref, sha: String
    let user: User
    let repo: Repo
}

// MARK: - Repo
struct Repo {
    let id: Int
    let nodeID, name, fullName: String
    let repoPrivate: Bool
    let owner: User
    let htmlURL: String
    let repoDescription: NSNull
    let fork: Bool
    let url, forksURL: String
    let keysURL, collaboratorsURL: String
    let teamsURL, hooksURL: String
    let issueEventsURL: String
    let eventsURL: String
    let assigneesURL, branchesURL: String
    let tagsURL: String
    let blobsURL, gitTagsURL, gitRefsURL, treesURL: String
    let statusesURL: String
    let languagesURL, stargazersURL, contributorsURL, subscribersURL: String
    let subscriptionURL: String
    let commitsURL, gitCommitsURL, commentsURL, issueCommentURL: String
    let contentsURL, compareURL: String
    let mergesURL: String
    let archiveURL: String
    let downloadsURL: String
    let issuesURL, pullsURL, milestonesURL, notificationsURL: String
    let labelsURL, releasesURL: String
    let deploymentsURL: String
    let createdAt, updatedAt, pushedAt: Date
    let gitURL, sshURL: String
    let cloneURL: String
    let svnURL: String
    let homepage: NSNull
    let size, stargazersCount, watchersCount: Int
    let language: NSNull
    let hasIssues, hasProjects, hasDownloads, hasWiki: Bool
    let hasPages: Bool
    let forksCount: Int
    let mirrorURL: NSNull
    let archived, disabled: Bool
    let openIssuesCount: Int
    let license: NSNull
    let allowForking, isTemplate, webCommitSignoffRequired: Bool
    let visibility: String
    let forks, openIssues, watchers: Int
    let defaultBranch: String
}

// MARK: - User
struct User {
    let login: String
    let id: Int
    let nodeID: String
    let avatarURL: String
    let gravatarID: String
    let url, htmlURL, followersURL: String
    let followingURL, gistsURL, starredURL: String
    let subscriptionsURL, organizationsURL, reposURL: String
    let eventsURL: String
    let receivedEventsURL: String
    let type: String
    let siteAdmin: Bool
}

// MARK: - Links
struct Links {
    let linksSelf, html, issue, comments: Comments
    let reviewComments, reviewComment, commits, statuses: Comments
}

// MARK: - Comments
struct Comments {
    let href: String
}

