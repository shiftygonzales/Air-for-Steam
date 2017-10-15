Friends/FriendsDialog.res {

	styles {
		FriendsSearch:empty {
			textcolor=none
			padding-top=3
			image="graphics/onfocus/search"
		}

		CFriendsListSectionAffordance {
			//the dropdown menu button on groups
			inset-left=-6
			padding-bottom=1
		}

		//CFriendsListSectionHeader {
			//!bug - style does not work (can only edit with basic label tag)
		//}

		PageTab {
			inset-top=-5
			padding-left=10
			//minimum-width=75
		}

		PageTab:selected {
			render_bg { }
		}
	}

	layout {
		region { name=header height=115 width=max }
			place [!$OSX] { control=frame_minimize,frame_close height=22 width=22 y=13 align=right margin-right=20 }
			place [$OSX] { control=frame_close,frame_minimize height=22 width=22 y=13 align=left margin-left=20 }
			place { control=frame_captiongrip margin=2 width=max height=115 }

			place [!$OSX] { control=MenuBar region=header align=top width=52 height=49 margin-left=-10 }
			place [!$OSX] { control=friends_search region=header y=9 x=56 height=22 width=92 }
			place [$OSX] { control=friends_search region=header y=9 x=73 height=22 width=92 }

			place { control=FriendPanelSelf region=header margin-top=55 margin-left=16 margin-right=16 }

		region { name=body y=115 height=max width=max }
		region { name=box height=max width=max region=body margin-left=16 margin-right=16 }
			place { control=FriendsDialogSheet region=body y=2 width=max height=max }
			place { control=DownLabel region=box y=25 width=max }
			place { control=NoFriendsAddFriendButton region=box start=DownLabel dir=down y=10 }

		place { control=frame_maximize,friends_search_icon,addFriendsButton height=0 width=0 margin-left=-9999 }
	}
}
