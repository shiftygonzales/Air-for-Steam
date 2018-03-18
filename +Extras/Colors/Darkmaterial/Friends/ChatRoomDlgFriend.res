"friends/ChatRoomDlgFriend.res"
{
	styles {
		CChatRoomDlg {
			//styles defined within ToolWindow in _layout.styles
		}

		ChatListPanel {
			render {
				0="image_scale( x0, y0, x1, y0 + 6, graphics/material/shadow_horiz )"
			}
		}

		Textentryfocus_chat {
			minimum-height=0
			inset-top=5
			inset-bottom=5
			inset-left=5
			inset-right=5
			render_bg {}
		}

		"RichText Scrollbar" {
			inset-bottom=21
		}
	}

	layout {
		region { name=top align=top height=90 width=max }
		region { name=chat y=56 margin-bottom=90 height=max width=max }
		region { name=bottom align=bottom height=90 width=max }

		place { control=TitlePanel					region=top align=left y=6 x=6 height=250 width=max margin-right=6 }

		place { control=VoiceBar,TradeInviteBar,GameInviteBar,BIBar,BABar width=max height=50 }

		place { control=VoiceBar						region=chat align=left width=max end-right=VoiceChat }
		place { control=VoiceChat						region=chat align=right y=10 margin-right=26 }

		place {
			control=TradeInviteBar,GameInviteBar,ChatInfoBar,BIBar,BABar,ChatHistory
			region=chat
			start=VoiceBar
			width=max
			height=max
			dir=down
			margin-bottom=-15
		}

		place { control=StatusLabel					region=bottom height=30 width=max margin-left=10 end-right=ChatActionsButton }
		place { control=ChatActionsButton		region=bottom height=30 width=42 align=right margin-right=12 }

		place { control=TextEntry						region=bottom x=7 y=37 height=46 width=max end-right=EmoticonButton margin-right=3 }
		place { control=EmoticonButton			region=bottom align=right y=36 height=50 margin-right=12 }

		place { control=SendButton height=0 width=0 }
	}
}
