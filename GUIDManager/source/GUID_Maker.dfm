object Form1: TForm1
  Left = 510
  Top = 238
  Width = 400
  Height = 395
  Caption = 'GUID-Maker'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 5
    Width = 377
    Height = 356
    ActivePage = TabSheet3
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = '&Verbindung'
      OnHide = TabSheet1Hide
      OnShow = TabSheet1Show
      object Label4: TLabel
        Left = 8
        Top = 212
        Width = 160
        Height = 13
        Caption = 'Herzlich Wilkommen bei dsfdb.org'
        WordWrap = True
      end
      object Label5: TLabel
        Left = 11
        Top = 312
        Width = 321
        Height = 13
        Alignment = taCenter
        Caption = 'Freeware under GNU-License - Copyright by Sebesta Thomas, 2004'
        WordWrap = True
      end
      object Panel3: TPanel
        Left = 8
        Top = 8
        Width = 353
        Height = 193
        BevelInner = bvLowered
        TabOrder = 0
        object Label1: TLabel
          Left = 11
          Top = 53
          Width = 184
          Height = 13
          Caption = 'Gebe Sie den Pfad zur *.UDL-Datei ein'
        end
        object Button6: TButton
          Left = 201
          Top = 152
          Width = 137
          Height = 25
          Caption = 'Pfad &laden'
          TabOrder = 0
          OnClick = Button6Click
        end
        object Button3: TButton
          Left = 201
          Top = 120
          Width = 137
          Height = 25
          Caption = 'Pfad &speichern'
          TabOrder = 1
          OnClick = Button3Click
        end
        object Button2: TButton
          Left = 9
          Top = 120
          Width = 163
          Height = 25
          Caption = 'Verbindung &testen'
          TabOrder = 2
          OnClick = Button2Click
        end
        object Button5: TButton
          Left = 239
          Top = 48
          Width = 107
          Height = 25
          Action = FileOpen1
          Caption = '&durchsuchen...'
          TabOrder = 3
        end
        object LabeledEdit1: TLabeledEdit
          Left = 9
          Top = 24
          Width = 337
          Height = 21
          EditLabel.Width = 106
          EditLabel.Height = 13
          EditLabel.Caption = 'Datenbankver&bindung'
          TabOrder = 4
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = '&GUID erzeugen'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 8
        Top = 10
        Width = 353
        Height = 97
        BevelInner = bvLowered
        TabOrder = 0
        object Label2: TLabel
          Left = 17
          Top = 50
          Width = 151
          Height = 26
          Alignment = taCenter
          Caption = 'Erzeugt einen GUID und kopiert ihn in die Zwischenablage'
          WordWrap = True
        end
        object LabeledEdit2: TLabeledEdit
          Left = 9
          Top = 19
          Width = 246
          Height = 21
          EditLabel.Width = 74
          EditLabel.Height = 13
          EditLabel.Caption = '&erzeugter GUID'
          ReadOnly = True
          TabOrder = 0
        end
        object Button4: TButton
          Left = 188
          Top = 54
          Width = 153
          Height = 25
          Hint = 'Kopieren|Markiertes Objekt in die Zwischenablage kopieren'
          Caption = 'GUID erzeugen und &Copy'
          TabOrder = 1
          OnClick = Button4Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Daten&bank'
      ImageIndex = 2
      object Panel1: TPanel
        Left = 8
        Top = 8
        Width = 353
        Height = 201
        BevelInner = bvLowered
        TabOrder = 0
        object Label3: TLabel
          Left = 31
          Top = 167
          Width = 152
          Height = 26
          Alignment = taCenter
          Caption = 'Erzeugt die gew'#252'nschte Anzahl von GUID'#39's in der Datenbank'
          WordWrap = True
        end
        object Button1: TButton
          Left = 190
          Top = 169
          Width = 153
          Height = 25
          Caption = 'GUID'#39's in die &Datenbank'
          TabOrder = 0
          OnClick = Button1Click
        end
        object DBGrid1: TDBGrid
          Left = 8
          Top = 41
          Width = 337
          Height = 120
          DataSource = DataSource1
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
        object LabeledEdit3: TLabeledEdit
          Left = 8
          Top = 9
          Width = 84
          Height = 21
          EditLabel.Width = 145
          EditLabel.Height = 13
          EditLabel.Caption = '&Anzahl zu erzeugender GUID'#39's'
          LabelPosition = lpRight
          LabelSpacing = 10
          TabOrder = 2
        end
      end
      object Panel4: TPanel
        Left = 8
        Top = 220
        Width = 353
        Height = 98
        BevelInner = bvLowered
        TabOrder = 1
        object Label6: TLabel
          Left = 14
          Top = 5
          Width = 195
          Height = 20
          Caption = 'l'#246'scht GUID'#39's in der Datenbank'
          WordWrap = True
        end
        object RadioGroup1: TRadioGroup
          Left = 14
          Top = 17
          Width = 184
          Height = 74
          ItemIndex = 1
          Items.Strings = (
            'all&e'
            '&in_use')
          TabOrder = 0
        end
        object Button7: TButton
          Left = 266
          Top = 64
          Width = 75
          Height = 25
          Caption = '&l'#246'schen'
          TabOrder = 1
          OnClick = Button7Click
        end
      end
    end
  end
  object ADOTable1: TADOTable
    ConnectionString = 'FILE NAME=C:\Programme\Borland\Delphi7\Projects\GUIDMaker.udl'
    CursorType = ctStatic
    TableName = 'gid_admin'
    Left = 264
    Top = 13
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 232
    Top = 13
  end
  object ActionManager1: TActionManager
    Left = 320
    Top = 13
    StyleName = 'XP Style'
    object FileOpen1: TFileOpen
      Category = 'Datei'
      Caption = 'durchsuchen...'
      Dialog.Filter = 'Verbindungsdatei (*.udl)|*.udl|alle Dateien (*.*)|*.*'
      Dialog.InitialDir = '?'
      Hint = #214'ffnen|Vorhandene Datei '#246'ffnen'
      ImageIndex = 7
      ShortCut = 16452
      OnAccept = Button5Click
    end
    object EditCopy1: TEditCopy
      Category = 'Bearbeiten'
      Caption = '&Kopieren'
      Hint = 'Kopieren|Markiertes Objekt in die Zwischenablage kopieren'
      ImageIndex = 1
      ShortCut = 16451
    end
  end
  object ADOQuery1: TADOQuery
    ConnectionString = 'FILE NAME=C:\Programme\Borland\Delphi7\Projects\GUIDMaker.udl'
    CursorType = ctStatic
    Parameters = <>
    Left = 360
    Top = 14
  end
end
