{-----------------------------------------------------------------------------
The contents of this file are subject to the Mozilla Public License
Version 1.1 (the "License"); you may not use this file except in compliance
with the License. You may obtain a copy of the License at
http://www.mozilla.org/MPL/MPL-1.1.html

Software distributed under the License is distributed on an "AS IS" basis,
WITHOUT WARRANTY OF ANY KIND, either expressed or implied. See the License for
the specific language governing rights and limitations under the License.

The Original Code is: JvgRegLibDelphi.PAS, released on 2003-01-15.

The Initial Developer of the Original Code is Andrey V. Chudin,  [chudin@yandex.ru]
Portions created by Andrey V. Chudin are Copyright (C) 2003 Andrey V. Chudin.
All Rights Reserved.

Contributor(s):
Michael Beck [mbeck@bigfoot.com].
Rob den Braasem [rbraasem@xs4all.nl].

Last Modified:  2003-01-15

You may retrieve the latest version of this file at the Project JEDI's JVCL home page,
located at http://jvcl.sourceforge.net

Known Issues:
-----------------------------------------------------------------------------}

{$I JVCL.INC}

//  this unit contains registration procedures for Delphi 4 - 7

unit JvgRegLibDelphi;

interface

procedure Register;

implementation

uses Classes,
  {$IFDEF COMPILER6_UP}
  DesignIntf,
  DesignEditors,
  PropertyCategories,
  {$ELSE}
  DsgnIntf,
  {$ENDIF COMPILER6_UP}
  JvgReportEditor,
  JvgAlignForm,
  JvgAlignFunction,
  JvgReportParamEditorForm,
  JvgBitBtn,
  JvgRuler,
  JvgReport,
  JvgCaption,
  JvgCGI,
  JvgReportParamEditor,
  JvgRichEditUtils,
  JvgCommClasses,
  JvgRttiUtils,
  JvgScrollBox,
  JvgConstSysRequirements,
  JvgCrossTable,
  JvgShade,
  JvgDBNav,
  JvgDigits,
  JvgDrawTab,
  JvgEdit,
  JvgExceptionHandler,
  JvgExport,
  JvgShadowEditor,
  JvgFileIterator,
  JvgFileUtils,
  JvgFixFont,
  JvgShadow,
  JvgGraph,
  JvgGraphicButton,
  JvgGridHeaderControl,
  JvgSingleInstance,
  JvgShape,
  JvgSpeedButton,
  JvgStaticText,
  JvgHoleShape,
  JvgHTTPVersionInfo,
  JvgSplit,
  JvgImageGroup,
  JvgInspectorGrid,
  JvgJump,
  JvgSmallFontsDefense,
  JvgSysInf,
  //   JvgStepLabel,
  JvgLogicItemEditor,
  JvgLogics,
  JvgStringContainer,
  JvgMailSlots,
  JvgStringGrid,
  JvgTabComm,
  JvgTab,
  JvgSysRequirements,
  JvgProcess,
  JvgProcessUtils,
  //   JvgTagParser,
  JvgPropertyCenter,
  JvgQPrintPreview,
  JvgQPrintSetup,
  JvgQRLabel,
  JvgTransparentMemo,
  JvgTreeView,
  JvgTypes,
  JvgVertDBGrid,
  JvgUtils,
  JvgWinMask,
  JvgWebDocumentIterator,
  JvgRTFPreviewEditor,
  JvgWizardHeader,
  JvgXMLSerializer,
  Jvg3DColors,
  JvgAskListBox,
  JvgBevel,
  JvgButton,
  JvgCheckBox,
  JvgCheckVersionInfo,
  JvgCompDescription,
  JvgComponentListEditor,
  JvgDBGrid,
  JvgExportComponents,
  JvgFlyingText,
  JvgGroupBox,
  JvgHelpPanel,
  JvgHelpPanelEditor,
  JvgHint,
  JvgImage,
  JvgLabel,
  JvgLanguageLoader,
  JvgListBox,
  JvgLogicsEditor,
  JvgMultiResourceEditor,
  JvgMultiResources,
  JvgPage,
  //   JvgPointEditor,
  JvgProgress;

procedure Register;
begin
  RegisterComponents('Jv BDE', [
    TJvgExportDBETable
      ]);

  RegisterComponents('Jv Data Controls', [
    TJvgDBNAvigator,
      TJvgPrintCrossTable,
      TJvgDBGrid,
      TJvgVertDBSGrid]);

  RegisterComponents('Jv Custom', [
    ]);

  RegisterComponents('Jv Dialogs', [
    ]);

   RegisterComponents('Jv System', [
      TJvgSysInfo
         ]);

   RegisterComponents('Jvg Additional', [
      TJvgMaskEdit,
         TJvgBevel,
         TJvgBitBtn,
         TJvgGraphicButton,
         TJvgGraph,
         TJvgTreeView,
         TJvgCheckTreeView,
         TJvgSplitter,
         TJvgShadow,
         TJvgShade,
         TJvgButton,
         TJvgImageGroup,
         TJvgProgress,
         TJvgTranspMemo,
         TJvgWinMask,
         TJvgGroupBox,
         TJvgBitmapImage,
         TJvgListBox,
         TJvgCheckListBox,
         TJvgAskListBox,
         TJvgScrollBox,
         TJvgStringGrid,
         TJvgSpeedButton,
         TJvgWizardHeader,
         TJvgCaption,
         TJvgGridHeaderControl
         ]);

   RegisterComponents('Jv Standard', [
      TJvgCheckBox
         ]);

   RegisterComponents('Jv Controls', [
      TJvgRuler
         ]);

   RegisterComponents('Jv Win32', [
      TJvgPageControl,
         TJvgTabControl,
         TJvgProcess
         ]);

   RegisterComponents('Jv Internet', [
      TJvgMailSlotServer,
         TJvgMailSlotClient
         ]);

   RegisterComponents('Jv Labels', [
      TJvgLabel,
         TJvgFlyingText,
         TJvgDigits,
         TJvgStaticText
         ]);
   RegisterComponents('Jv Forms', [
      TJvgHoleShape
         ]);

   RegisterComponents('JvG Utils', [
      TJvgExportExcel,
         TJvgExportHTML,
         TJvgHelpPanel,
         TJvgExportXML,
         TJvgXMLSerializer,
         TJvgLanguageLoader,
         TJvgExceptionHandler,
         TJvgJumpingComponent,
         TJvgStringContainer,
         TJvgSysRequirements,
         TJvg3DColors,
         TJvgHint,
         TJvginspectorGrid,
         TJvgReport,
         TJvgReportParamsEditor,
         TJvgLogicProducer,
         TJvgSmallFontsDefence,
         TJvgMultipleResources,
         TJvgSingleInstance,
         TJvgFixFont,
         TJvgComponentDescription]);



  RegisterComponents('Jv Composites', [
    ]);

  RegisterComponents('Jv QReport', [
    TJvgQRLabel,
      TJvgQRDBText
      ]);

  RegisterComponentEditor(TJvgPropertyCenter, TJvgComponentListEditor);

  RegisterPropertyEditor(TypeInfo(TStringList), TJvgPropertyCenter,
    'ComponentList', TJvgComponentListProperty);

  RegisterComponentEditor(TJvgReportParamsEditor, TJvgRepParamsEditor);

  RegisterComponentEditor(TJvgLogicProducer, TJvgLogicsComponentEditor);

  RegisterComponentEditor(TJvgReport, TJvgReportCompEditor);

  RegisterPropertyEditor(TypeInfo(TStringList), TJvgReport, 'Report', TJvgRepProperty);

  RegisterComponentEditor(TJvgReportEditor, TJvgReportCompEditor);

  RegisterComponentEditor(TJvgShadow, TJvgShadowEditor);

  RegisterComponentEditor(TJvgHelpPanel, TJvgHelpPanelEditor);

  RegisterPropertyEditor(TypeInfo(TJvgResStringList), TJvgMultipleResources,
    'Resources', TJvgResourcesProperty);

  //   RegisterComponentEditor(TJvgGridHeaderControl, TJvgGridHeaderControl_Editor);
  //   RegisterPropertyEditor(TypeInfo(STRING), TJvgMaskEdit, 'EditMask',
  //      TMaskProperty);
  //   RegisterPropertyEditor(TypeInfo(STRING), TJvgProcess, 'FileName',
  //      TFilenameProperty);

end;

end.
