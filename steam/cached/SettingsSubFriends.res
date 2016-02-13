"steam/cached/SettingsSubFriends.res"
{

	styles{
		Page
		{
			bgcolor="none"
			render_bg
			{
				// background gradient
				0="fill( x0, y0, x1, y1, DefaultBackground )"
			}
		}
		
		"Page Button"
		{     
			font-family=basefont
			font-size=13
			font-weight=400
			textcolor=Button.Text
			bgcolor=none
			render_bg
			{
				// background fill
				0="fill( x0, y0, x1, y1, Button.Back )"
			}
		}
		
		"Page Button:hover"
		{   
			textcolor=Button.Hover.Text
			render_bg
			{     
				// background fill
				0="fill( x0, y0, x1, y1, Button.Hover)"             
			}
		}
		
		"Page Button:focus"
		{
			textcolor=Button.Active.Text
			render_bg
			{
				0="fill( x0, y0, x1, y1, Button.Active)"			    
			}
		} 
		
		"Page Button:active" // this is the left-mouse-currently-pressed state
		{
			textcolor=Button.Active.Text
			render_bg
			{     
				// background fill
				0="fill( x0, y0, x1, y1, Button.Active)"
			}
		}
		
		"Page Button:selected"
		{
			textcolor=Button.Active.Text
			render_bg
			{     
				// background fill
				0="fill( x0, y0, x1, y1, Button.Active)"
			}
		}
		
		"Page Button:disabled"
		{
			textcolor=Button.Disabled.Text
			render_bg
			{     
				// background fill
				0="fill( x0, y0, x1, y1, Button.Disabled)"             
			}
		}   
		Label
		{
			textcolor=DefaultText
			font-size=20
		}
	}
	
	layout{
		
		region {name=hidden width=0 height=0}
	
		place { control="Label2" x=70 y=15 width=304 height=24 region=hidden} //profile name
		place { control="URLLabel2" region=hidden } //change (avatar)
		
		place { control="Label1" margin-top=20 margin-left=20} //avatar
		place { control="ImageAvatar" start=Label1 x=4 margin-top=9 dir=down width=32 height=32 }
		place { control="ImageAvatarOverlay" start=Label1 dir=down margin-top=5 width=40 height=40 }
		place { control="NameEntry" start=ImageAvatar dir=right y=4 x=15}
		place { control="URLLabel1" start=NameEntry dir=right align=right margin-right=35 height=24 } //view my steam community profile
		
		place { control="Divider1" start=ImageAvatarOverlay dir=down margin-top=15 width=max margin-right=20 }
		
		place { control=AutoSignIntoFriendsCheck,ShowTimeInChatLogCheck,AlwaysNewChatCheck start=Divider1 dir=down margin-top=15}
		place { control="Divider2" start=AlwaysNewChatCheck dir=down margin-top=15 width=max margin-right=20 }
		
		place { control="Label3" start=Divider2 dir=down margin-top=15 } //notifications and sounds
		
		place { control="Label4" start=Label3 dir=down margin-top=15 } //when any friend joins a game
		place { control="JoinGameNotifyCheck,JoinGamePlaySoundCheck" start=Label4 dir=down margin-top=4}
		
		place { control="Label5" start=JoinGamePlaySoundCheck dir=down margin-top=15 } //when any friend comes online
		place { control="FriendOnlineNotifyCheck,FriendOnlinePlaySoundCheck" start=Label5 dir=down margin-top=4}
		
		place { control="Label6" start=Label4 dir=right margin-left=80 } //when I recieve a message
		place { control="ReceiveMessageNotifyCheck,ReceiveMessagePlaySoundCheck" start=Label6 dir=down margin-top=4}
		
		place { control="Label7" start=ReceiveMessagePlaySoundCheck dir=down margin-top=15 } //flash window when i receive a message
		place { control="FlashModeAlways,FlashModeMinimized,FlashModeNever" start=Label7 dir=down margin-top=4 }
	}
	
	"ImageAvatar"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"ImageAvatar"
		"xpos"		"23"
		"ypos"		"41"
		"wide"		"32"
		"tall"		"32"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"gradientVertical"		"0"
		"scaleImage"		"0"
	}
	"ImageAvatarOverlay"
	{
		"ControlName"		"ImagePanel"
		"fieldName"		"ImageAvatarOverlay"
		"xpos"		"19"
		"ypos"		"37"
		"wide"		"40"
		"tall"		"40"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"gradientVertical"		"0"
		"scaleImage"		"0"
	}
	"Label1"
	{
		"ControlName"		"Label"
		"fieldName"		"Label1"
		"xpos"		"20"
		"ypos"		"15"
		"wide"		"100"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_Avatar"
		"textAlignment"		"west"
		"font"		"UiBold"
		"wrap"		"0"
	}
	"Label2"
	{
		"ControlName"		"Label"
		"fieldName"		"Label2"
		"xpos"		"70"
		"ypos"		"15"
		"wide"		"304"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_Nickname"
		"textAlignment"		"west"
		"associate"		"NameEntry"
		"font"		"UiBold"
		"wrap"		"0"
	}
	"NameEntry"
	{
		"ControlName"		"TextEntry"
		"fieldName"		"NameEntry"
		"xpos"		"70"
		"ypos"		"43"
		"wide"		"185"
		"tall"		"25"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"1"
		"paintbackground"		"1"
		"textHidden"		"0"
		"editable"		"1"
		"maxchars"		"32"
		"NumericInputOnly"		"0"
		"unicode"		"1"
	}
	"Divider1"
	{
		"ControlName"		"Divider"
		"fieldName"		"Divider1"
		"xpos"		"20"
		"ypos"		"109"
		"wide"		"440"
		"tall"		"2"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"AutoSignIntoFriendsCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"AutoSignIntoFriendsCheck"
		"xpos"		"17"
		"ypos"		"117"
		"wide"		"424"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"2"
		"paintbackground"		"1"
		"labelText"		"#Friends_AutoSignIntoFriendsOnStartup"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"ShowTimeInChatLogCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"ShowTimeInChatLogCheck"
		"xpos"		"17"
		"ypos"		"138"
		"wide"		"424"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_ShowTimeInChatLog"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"AutoTabbedChatCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"AlwaysNewChatCheck"
		"xpos"		"17"
		"ypos"		"159"
		"wide"		"424"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_AlwaysNewChatCheck"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"Divider2"
	{
		"ControlName"		"Divider"
		"fieldName"		"Divider2"
		"xpos"		"20"
		"ypos"		"191"
		"wide"		"440"
		"tall"		"2"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
	}
	"Label3"
	{
		"ControlName"		"Label"
		"fieldName"		"Label3"
		"xpos"		"20"
		"ypos"		"205"
		"wide"		"424"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_NotificationsAndSounds"
		"textAlignment"		"west"
		"font"		"UiBold"
		"wrap"		"0"
	}
	"Label4"
	{
		"ControlName"		"Label"
		"fieldName"		"Label4"
		"xpos"		"20"
		"ypos"		"237"
		"wide"		"215"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_WhenFriendJoinsGame"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"JoinGameNotifyCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"JoinGameNotifyCheck"
		"xpos"		"25"
		"ypos"		"259"
		"wide"		"202"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"3"
		"paintbackground"		"1"
		"labelText"		"#Friends_DisplayNotification"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"JoinGamePlaySoundCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"JoinGamePlaySoundCheck"
		"xpos"		"25"
		"ypos"		"282"
		"wide"		"202"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"4"
		"paintbackground"		"1"
		"labelText"		"#Friends_PlayASound"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"Label5"
	{
		"ControlName"		"Label"
		"fieldName"		"Label5"
		"xpos"		"20"
		"ypos"		"315"
		"wide"		"202"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_WhenFriendComesOnline"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"FriendOnlineNotifyCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"FriendOnlineNotifyCheck"
		"xpos"		"25"
		"ypos"		"339"
		"wide"		"202"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"5"
		"paintbackground"		"1"
		"labelText"		"#Friends_DisplayNotification"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"FriendOnlinePlaySoundCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"FriendOnlinePlaySoundCheck"
		"xpos"		"25"
		"ypos"		"360"
		"wide"		"202"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"6"
		"paintbackground"		"1"
		"labelText"		"#Friends_PlayASound"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"Label6"
	{
		"ControlName"		"Label"
		"fieldName"		"Label6"
		"xpos"		"282"
		"ypos"		"237"
		"wide"		"252"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_WhenReceiveMessage"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"ReceiveMessageNotifyCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"ReceiveMessageNotifyCheck"
		"xpos"		"290"
		"ypos"		"259"
		"wide"		"230"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"7"
		"paintbackground"		"1"
		"labelText"		"#Friends_DisplayNotification"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"ReceiveMessagePlaySoundCheck"
	{
		"ControlName"		"CheckButton"
		"fieldName"		"ReceiveMessagePlaySoundCheck"
		"xpos"		"290"
		"ypos"		"281"
		"wide"		"230"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"8"
		"paintbackground"		"1"
		"labelText"		"#Friends_PlayASound"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
	}
	"URLLabel1"
	{
		"ControlName"		"URLLabel"
		"fieldName"		"URLLabel1"
		"xpos"		"70"
		"ypos"		"84"
		"wide"		"324"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_ViewSteamCommunityProfile"
		"textAlignment"		"west"
		"wrap"		"0"
		"URLText"		"steam://url/SteamIDMyProfile"
	}
	"URLLabel2"
	{
		"ControlName"		"URLLabel"
		"fieldName"		"URLLabel2"
		"xpos"		"20"
		"ypos"		"84"
		"wide"		"100"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_ChangeAvatar"
		"textAlignment"		"west"
		"wrap"		"0"
		"URLText"		"steam://url/SteamIDEditPage"
	}

	"Label7"
	{
		"ControlName"		"Label"
		"fieldName"		"Label7"
		"xpos"		"282"
		"ypos"		"315"
		"wide"		"252"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_FlashWindow"
		"textAlignment"		"west"
		"wrap"		"0"
	}
	"FlashModeAlways"
	{
		"ControlName"		"RadioButton"
		"fieldName"		"FlashModeAlways"
		"xpos"		"290"
		"ypos"		"339"
		"wide"		"252"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_FlashWindowAlways"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
		"SubTabPosition"		"0"
	}
	"FlashModeMinimized"
	{
		"ControlName"		"RadioButton"
		"fieldName"		"FlashModeMinimized"
		"xpos"		"290"
		"ypos"		"360"
		"wide"		"252"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_FlashWindowMinimized"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
		"SubTabPosition"		"0"
	}
	"FlashModeNever"
	{
		"ControlName"		"RadioButton"
		"fieldName"		"FlashModeNever"
		"xpos"		"290"
		"ypos"		"381"
		"wide"		"252"
		"tall"		"24"
		"AutoResize"		"0"
		"PinCorner"		"0"
		"visible"		"1"
		"enabled"		"1"
		"tabPosition"		"0"
		"paintbackground"		"1"
		"labelText"		"#Friends_FlashWindowNever"
		"textAlignment"		"west"
		"wrap"		"0"
		"Default"		"0"
		"SubTabPosition"		"0"
	}
}
