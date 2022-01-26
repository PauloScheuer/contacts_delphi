object Contacts: TContacts
  Left = 0
  Top = 0
  Caption = 'Contacts'
  ClientHeight = 350
  ClientWidth = 592
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LabelId: TLabel
    Left = 32
    Top = 8
    Width = 14
    Height = 13
    Caption = 'Id:'
  end
  object LabelName: TLabel
    Left = 32
    Top = 61
    Width = 31
    Height = 13
    Caption = 'Name:'
  end
  object LabelEmail: TLabel
    Left = 32
    Top = 117
    Width = 32
    Height = 13
    Caption = 'E-mail:'
  end
  object LabelPhone: TLabel
    Left = 32
    Top = 172
    Width = 34
    Height = 13
    Caption = 'Phone:'
  end
  object LabelAbout: TLabel
    Left = 35
    Top = 229
    Width = 33
    Height = 13
    Caption = 'About:'
  end
  object Edit1: TEdit
    Left = 32
    Top = 24
    Width = 185
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = '1'
  end
  object Edit2: TEdit
    Left = 32
    Top = 80
    Width = 185
    Height = 21
    TabOrder = 1
    Text = 'Paulo'
  end
  object Edit3: TEdit
    Left = 32
    Top = 136
    Width = 185
    Height = 21
    TabOrder = 2
    Text = 'paulo@email'
  end
  object Edit4: TEdit
    Left = 32
    Top = 191
    Width = 185
    Height = 21
    TabOrder = 3
    Text = '12345678'
  end
  object DBNavigator1: TDBNavigator
    Left = 332
    Top = 312
    Width = 250
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 262
    Top = 24
    Width = 320
    Height = 120
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Memo1: TMemo
    Left = 32
    Top = 248
    Width = 185
    Height = 89
    Lines.Strings = (
      'My contact')
    TabOrder = 6
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\paulo\Documents\projects\curso_delphi\contacts' +
        '\Win32\Debug\assets\db.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 648
    Top = 16
  end
  object BindSourcecontacts: TBindSourceDB
    DataSet = FDTablecontacts
    ScopeMappings = <>
    Left = 648
    Top = 48
  end
  object FDTablecontacts: TFDTable
    Active = True
    IndexFieldNames = 'id_contact'
    Connection = FDConnection1
    TableName = 'contacts'
    Left = 648
    Top = 80
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 652
    Top = 117
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontacts
      FieldName = 'id_contact'
      Control = Edit1
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontacts
      FieldName = 'name_contact'
      Control = Edit2
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontacts
      FieldName = 'email_contact'
      Control = Edit3
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontacts
      FieldName = 'phone_contact'
      Control = Edit4
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcecontacts
      FieldName = 'about_contact'
      Control = Memo1
      Track = False
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTablecontacts
    Left = 584
    Top = 16
  end
end
