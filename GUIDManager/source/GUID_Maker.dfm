object Form1: TForm1
  Left = 510
  Top = 238
  Width = 400
  Height = 415
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
    ActivePage = TabSheet4
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    object TabSheet1: TTabSheet
      Hint = 'Verbindungserstellung zur Datenbank'
      Caption = '&Verbindung'
      ParentShowHint = False
      ShowHint = True
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
          Hint = 'l'#228'dt einen gespeicherten Pfad zu einer UDL-Datei'
          Caption = 'Pfad &laden'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 1
          OnClick = Button6Click
        end
        object Button3: TButton
          Left = 201
          Top = 120
          Width = 137
          Height = 25
          Hint = 'speichert den angezeigten Pfad zur UDL-Datei'
          Caption = 'Pfad &speichern'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 2
          OnClick = Button3Click
        end
        object Button2: TButton
          Left = 9
          Top = 120
          Width = 163
          Height = 25
          Hint = 'testet die Verbindung zur Datenbank'
          Caption = 'Verbindung &testen'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 3
          OnClick = Button2Click
        end
        object Button5: TButton
          Left = 239
          Top = 48
          Width = 107
          Height = 25
          Action = FileOpen1
          Caption = '&durchsuchen...'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 4
        end
        object LabeledEdit1: TLabeledEdit
          Left = 9
          Top = 24
          Width = 337
          Height = 21
          Hint = 'Pfad zur aktuellen UDL-Datei'
          EditLabel.Width = 106
          EditLabel.Height = 13
          EditLabel.Caption = 'Datenbankver&bindung'
          ParentShowHint = False
          ShowHint = True
          TabOrder = 0
        end
      end
    end
    object TabSheet2: TTabSheet
      Hint = 'EinzelGUID-Erzeugung'
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
          Hint = 'erzeugter GUID in der Ablage'
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
          Hint = 'neuen GUID in die Zwischenablage kopieren'
          Caption = 'GUID erzeugen und &Copy'
          TabOrder = 1
          OnClick = Button4Click
        end
      end
    end
    object TabSheet3: TTabSheet
      Hint = 'GUID-Erzeugung in der Datenbank'
      Caption = 'Daten&bank'
      ImageIndex = 2
      OnShow = TabSheet3Show
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
          Hint = 'erzeugt die Anzahl der gew'#252'nschten GUID'#39's'
          Caption = 'GUID'#39's in die &Datenbank'
          TabOrder = 0
          OnClick = Button1Click
        end
        object DBGrid1: TDBGrid
          Left = 8
          Top = 41
          Width = 337
          Height = 120
          Hint = 'in datenbank vorhandene GUID'#39's'
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
          Hint = 'Anzahl der zu erzeugenden GUID'#39's'
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
          Width = 150
          Height = 13
          Caption = 'l'#246'scht GUID'#39's in der Datenbank'
          WordWrap = True
        end
        object RadioGroup1: TRadioGroup
          Left = 14
          Top = 17
          Width = 184
          Height = 74
          Hint = 'l'#246'schen gekennzeichneter Art von GUID'#39's'
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
          Hint = 'l'#246'scht ausgew'#228'hlte GUID'#39's'
          Caption = '&l'#246'schen'
          TabOrder = 1
          OnClick = Button7Click
        end
      end
    end
    object TabSheet4: TTabSheet
      Hint = 'Statistik in der DB vorhandenen GUID'#39's'
      Caption = '&Statistik'
      ImageIndex = 3
      OnShow = btnAktualisierungClick
      object Panel5: TPanel
        Left = 8
        Top = 8
        Width = 353
        Height = 201
        BevelInner = bvLowered
        TabOrder = 0
        object statSummary: TLabeledEdit
          Left = 8
          Top = 24
          Width = 121
          Height = 21
          Hint = 'Anzahl in DB vorhandener GUID'#39's'
          EditLabel.Width = 153
          EditLabel.Height = 13
          EditLabel.Caption = 'Anzahl der vorhandenen GUID'#39's'
          ReadOnly = True
          TabOrder = 0
        end
        object statUseful: TLabeledEdit
          Left = 8
          Top = 64
          Width = 121
          Height = 21
          Hint = 'Anzahl in DB vorhandener verwendbarer GUID'#39's'
          EditLabel.Width = 158
          EditLabel.Height = 13
          EditLabel.Caption = 'Anzahl der verwendbaren GUID'#39's'
          ReadOnly = True
          TabOrder = 1
        end
        object statUnuse: TLabeledEdit
          Left = 8
          Top = 104
          Width = 121
          Height = 21
          Hint = 'Anzahl in der DB vorhandener bereits eingesetzter GUID'#39's'
          EditLabel.Width = 137
          EditLabel.Height = 13
          EditLabel.Caption = 'Anzahl der benutzten GUID'#39's'
          ReadOnly = True
          TabOrder = 2
        end
        object btnAktualisierung: TButton
          Left = 208
          Top = 160
          Width = 123
          Height = 25
          Hint = 'Aktualisiert die Statistik'
          Caption = '&aktualisieren'
          TabOrder = 3
          OnClick = btnAktualisierungClick
        end
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 369
    Width = 392
    Height = 19
    Panels = <>
  end
  object ADOTable1: TADOTable
    ConnectionString = 'FILE NAME=C:\Programme\Borland\Delphi7\Projects\GUIDMaker.udl'
    CursorType = ctStatic
    TableName = 'gid_admin'
    Left = 296
    Top = 13
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 360
    Top = 45
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
